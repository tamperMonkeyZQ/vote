package com.sut.vote.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sut.vote.dao.CounselorQsMapper;
import com.sut.vote.dao.LearningQsMapper;
import com.sut.vote.dao.MentalQsMapper;
import com.sut.vote.dao.ProfessionalQsMapper;
import com.sut.vote.models.*;
import com.sut.vote.services.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    ProfessionalQsMapper professionalQsMapper;
    @Autowired
    UserServices userServices;
    @Autowired
    MentalServices mentalServices;
    @Autowired
    MentalQsMapper mentalQsMapper;
    @Autowired
    LearningQsMapper learningQsMapper;
    @Autowired
    RecordServices recordServices;
    @Autowired
    TeacherServices teacherServices;
    @Autowired
    LearningServices learningServices;
    @Autowired
    CounselorServices counselorServices;
    @Autowired
    ProfessionalServices professionalServices;
    @Autowired
    CounselorQsMapper counselorQsMapper;
    /**
     * 默认界面，返回登录界面
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(HttpServletRequest httpServletRequest){
        /*System.out.println(mentalQsMapper.caculator());*/
        return "index";
    }

    /**
     * 登录检查
     * @param httpServletRequest
     * @param username 用户输入的用户名
     * @param password 密码
     * @return
     */
    @RequestMapping(value="/loginCheck",method = RequestMethod.POST)
    public @ResponseBody Object loginCheck(HttpServletRequest httpServletRequest,
                             @Param("username")String username,
                             @Param("password")String password){
        User user = new User(username,password);
        HashMap<String, String> res = new HashMap<String, String>();
        //返回Ajax三个状态码：1：成功 2：管理员 0:失败 用于页面的重定向
        if(userServices.loginCheck(user))
        {
            httpServletRequest.getSession().setAttribute("currentUser",user);
            if(user.getcCode().equals("admin")) {
                res.put("stateCode", "2");
                return res;
            }
            res.put("stateCode", "1");
        }
        else
            res.put("stateCode", "0");
        return res;
    }

    /**
     * 首页，默认返回心里健康问卷
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value="/main",method = RequestMethod.GET)
    public ModelAndView main(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","mentalQs");
        return modelAndView;
    }
    /**
     * 问卷查询选择
     * @param httpServletRequest
     * @param institute
     * @retrun
     * @throws ClassNotFoundException
     * */
    @RequestMapping(value = "/mentalQs/submit" ,method = RequestMethod.POST)
    public @ResponseBody Object search(HttpServletRequest httpServletRequest
            ,@RequestBody String institute) throws ClassNotFoundException{
       JSONObject instituteSerach = JSONObject.parseObject(institute);
       return 1;
    }

    /**
     * 完成的问卷提交
     * @param httpServletRequest
     * @param vote 由表单生成的json串，同时还包括用户id，学院，属性VotePage代表了当前问卷
     * @return
     * @throws ClassNotFoundException
     */
    @RequestMapping(value="/submit",method = RequestMethod.POST)
    public @ResponseBody Object submit(HttpServletRequest httpServletRequest
            ,@RequestBody JSONObject vote
    ) throws ClassNotFoundException {
        String resp = "调查完成";
        //根据VotePage的值做路由，调用相应问卷的services进行记录的添加
        switch (vote.getString("VotePage")){
            case "mentalQs":
                MentalQs mentalQs = JSONObject.parseObject(vote.toJSONString(),MentalQs.class);

                if(mentalServices.ifCompete(mentalQs) == true)
                    resp = "您已经完成投票，无需再进行";
                else
                {
                    mentalServices.insert(mentalQs);
                }
                break;
            case "learningQs":
                //TODO
                LearningQs learningQs = JSONObject.parseObject(vote.toJSONString(),LearningQs.class);
                if (learningServices.equals(learningQs) == true) {
                    resp = "您已经完成投票，无需再进行";
                }
                else{
                    learningServices.insert(learningQs);
                }
                break;
            case "counselorQs":
                CounselorQs counselorQs = JSONObject.parseObject(vote.toJSONString(),CounselorQs.class);
                if (counselorServices.equals(counselorQs) == true){
                    resp = "您已经完成投票，无需再进行";
                }else{
                    Record record = JSONObject.parseObject(vote.toJSONString(),Record.class);
                    counselorServices.insert(counselorQs);
                    record.setcThchCode(teacherServices.getByName(vote.getString("cTechName")).getcCode());
                    recordServices.insert(record);
                }
                break;
            case "professionQs":
                ProfessionalQs professionalQs = JSONObject.parseObject(vote.toJSONString(),ProfessionalQs.class);
                if (professionalServices.ifCompete(professionalQs) == true){
                    resp = "您已经完成投票，无需再进行";
                }else{
                    professionalServices.insert(professionalQs);
                }
                break;
        }
        return resp;
    }

    /**
     * 返回心里健康问卷
     * @return
     */
    @RequestMapping(value = "/mentalQs",method = RequestMethod.GET)
    public ModelAndView mentalQs(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","mentalQs");
        return modelAndView;
    }
    /**
     * 查询返回心里健康问卷
     * @return
     */
    @RequestMapping(value = "/mentalResult",method = RequestMethod.GET)
    public ModelAndView mentalResult(){
        ModelAndView modelAndView = new ModelAndView("adminSearch");
        modelAndView.addObject("CheckPage","mentalResult");
        return modelAndView;
    }
    /**
     * 查询返回学习满意度问卷
     * @return
     */
    @RequestMapping(value = "/learningResult",method = RequestMethod.GET)
    public ModelAndView learningResult(){
        ModelAndView modelAndView = new ModelAndView("adminSearch");
        modelAndView.addObject("CheckPage","learningResult");
        return modelAndView;
    }
    /**
     * 查询返回职业规划问卷
     * @return
     */
    @RequestMapping(value = "/professionResult",method = RequestMethod.GET)
    public ModelAndView professionResult(){
        ModelAndView modelAndView = new ModelAndView("adminSearch");
        modelAndView.addObject("CheckPage","professionResult");
        return modelAndView;
    }
    /**
     * 查询返回辅导员考核问卷
     * @return
     */
    @RequestMapping(value = "/counselorResult",method = RequestMethod.GET)
    public ModelAndView counselorResult(){
        ModelAndView modelAndView = new ModelAndView("adminSearch");
        modelAndView.addObject("CheckPage","counselorResult");
        return modelAndView;
    }


    /**
     * 返回学习情况满意度问卷
     * @return
     */
    @RequestMapping(value = "/learningQs",method = RequestMethod.GET)
    public ModelAndView learningQs(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","learningQs");
        return modelAndView;
    }
    @RequestMapping(value = "/professionQs",method = RequestMethod.GET)
    public ModelAndView professionQsQs(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","professionQs");
        return modelAndView;
    }

    /**
     * 返回学习情况满意度问卷
     * @return
     */
    @RequestMapping(value = "/counselorQs",method = RequestMethod.GET)
    public ModelAndView counselorQs(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","counselorQs");
        return modelAndView;
    }

    /**
     * 管理员首页，默认返回心理问卷查询结果
     * @param httpServletRequest
     * @return
     */
   @RequestMapping(value="/adminSearch",method = RequestMethod.GET)
    public ModelAndView adminSearch(HttpServletRequest httpServletRequest) throws ClassNotFoundException{
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("adminSearch");
        modelAndView.addObject("CheckPage","mentalResult");
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping(value = "/mentalResult/load",method = RequestMethod.GET)
    public String mentalLoad(@RequestParam(value = "institutename",required = false) String institutename){
       mentalQsMapper.processCalc(institutename);
        List<Result> list = mentalQsMapper.selectResult();
        List<Map<String, Object>> res = new ArrayList<>();
        int i=0;
        for(Result tempList:list){
            Map<String,Object> map =new HashMap<>();
            map.put("no",++i);
            map.put("value", tempList);
            res.add(map);
        }
        TableInfo tableInfo = new TableInfo();
        tableInfo.setRows(res);
        return JSON.toJSONString(tableInfo);
    }
    @ResponseBody
    @RequestMapping(value = "/professionResult/load",method = RequestMethod.GET)
    public String counselorResultLoad(){
        List<CounselorResult> list = professionalQsMapper.professionalSearch();
        List<Map<String, Object>> res = new ArrayList<>();
        int i=0;
        for(CounselorResult tempList:list){
            Map<String,Object> map =new HashMap<>();
            map.put("no",++i);
            map.put("value", tempList);
            res.add(map);
        }
        TableInfo tableInfo = new TableInfo();
        tableInfo.setRows(res);
        return JSON.toJSONString(tableInfo);
    }

   @ResponseBody
   @RequestMapping(value = "/counselorResult/load",method = RequestMethod.GET)
   public String Counselorload(){
       List<CounselorResult> list = counselorQsMapper.counselorSearch();
       List<Map<String, Object>> res = new ArrayList<>();
       int i=0;
       for(CounselorResult tempList:list){
           Map<String,Object> map =new HashMap<>();
           map.put("no",++i);
           map.put("value", tempList);
           res.add(map);
       }
       TableInfo tableInfo = new TableInfo();
       tableInfo.setRows(res);
       return JSON.toJSONString(tableInfo);
   }
    @ResponseBody
    @RequestMapping(value = "/learningResult/load",method = RequestMethod.GET)
    public String Learningload(@RequestParam(value = "institutename",required = false) String institutename){
       learningQsMapper.learningResult(institutename);
        List<Result> list = learningQsMapper.selectLearningResult();
        List<Map<String, Object>> res = new ArrayList<>();
        int i=0;
        for(Result tempList:list){
            Map<String,Object> map =new HashMap<>();
            map.put("no",++i);
            map.put("value", tempList);
            res.add(map);
        }
        TableInfo tableInfo = new TableInfo();
        tableInfo.setRows(res);
        return JSON.toJSONString(tableInfo);
    }



    class TableInfo{
        List<Map<String,Object>> rows;

        public List<Map<String, Object>> getRows() {
            return rows;
        }

        public void setRows(List<Map<String, Object>> rows) {
            this.rows = rows;
        }
    }
}
