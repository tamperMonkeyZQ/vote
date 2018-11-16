package com.sut.vote.controller;

import com.sut.vote.models.User;
import com.sut.vote.services.UserServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

@Controller
public class IndexController {
    @Autowired
    UserServices userServices;
    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(HttpServletRequest httpServletRequest){
        return "index";
    }
    @RequestMapping(value="/loginCheck",method = RequestMethod.POST)
    public @ResponseBody Object loginCheck(HttpServletRequest httpServletRequest,
                             @Param(value = "")String username,
                             @Param(value = "")String password){
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
    public String main(){
        return "main";
    }
}
