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
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(HttpServletRequest httpServletRequest){
        return "index";
    }
    @RequestMapping(value="/loginCheck",method = RequestMethod.POST)
    public @ResponseBody Object loginCheck(HttpServletRequest httpServletRequest,
                             @Param("username")String username,
                             @Param("password")String password){
        User user = new User(username,password);
        HashMap<String, String> res = new HashMap<String, String>();
        if(userServices.loginCheck(user))
        {
            httpServletRequest.getSession().setAttribute("currentUser",user);
            res.put("stateCode", "1");
        }
        else
            res.put("stateCode", "0");
        return res;
    }
    @RequestMapping(value="/main",method = RequestMethod.GET)
    public ModelAndView main(HttpServletRequest httpServletRequest){
        if(httpServletRequest.getSession().getAttribute("currentUser")==null)
            return new ModelAndView("index");
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","mentalQs");
        return modelAndView;
    }
    @RequestMapping(value="/submit",method = RequestMethod.POST)
    public @ResponseBody Object submit(HttpServletRequest httpServletRequest
            ,@RequestBody JSONObject vote
    ) throws ClassNotFoundException {
        String resp = "调查完成";
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
    @RequestMapping(value = "/mentalQs",method = RequestMethod.GET)
    public ModelAndView mentalQs(){
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","mentalQs");
        return modelAndView;
    }
    @RequestMapping(value = "/learningQs",method = RequestMethod.GET)
    public ModelAndView learningQs(){
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("VotePage","learningQs");
        return modelAndView;
    }
}
