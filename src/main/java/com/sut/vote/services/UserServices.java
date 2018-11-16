package com.sut.vote.services;

import com.sut.vote.dao.UserMapper;
import com.sut.vote.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

@ComponentScan({"com.sut.vote.dao"})
@Service
public class UserServices {
    @Autowired
    private UserMapper userMapper;

    public boolean loginCheck(User user){
        User tempUser = userMapper.selectByPrimaryKey("151203426");
        if(tempUser==null)
            return false;
        else
            if(tempUser.getIdNo().substring(12,18).equals(user.getIdNo()))
                return true;
            else
                return false;

    }
}
