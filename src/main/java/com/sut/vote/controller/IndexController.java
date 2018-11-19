package com.sut.vote.controller;

import com.alibaba.fastjson.JSONObject;
import com.sut.vote.models.MentalQs;
import com.sut.vote.models.User;
import com.sut.vote.services.MentalServices;
import com.sut.vote.services.UserServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Type;
import java.util.HashMap;

@Controller
public class IndexController {
    @Autowired
    UserServices userServices;
    @Autowired
    MentalServices mentalServices;
    /**
     * 默认界面，返回登录界面
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(HttpServletRequest httpServletRequest){
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
                    mentalServices.insert(mentalQs);
                break;
            case "learningQs":
                //TODO
                break;
        }
        return resp;
    }

    /**
     * 返回心里健康问卷
     * @return
     */
    @RequestMapping(value = "/mentalQs",method = RequestMethod.GET)
    public ModelAndView mentalQs(){
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","mentalQs");
        return modelAndView;
    }

    /**
     * 返回学习情况满意度问卷
     * @return
     */
    @RequestMapping(value = "/learningQs",method = RequestMethod.GET)
    public ModelAndView learningQs(){
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","learningQs");
        return modelAndView;
    }
    /**
     * 返回管理员界面
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String admin(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return "index";
        return "admin";
    }
}
