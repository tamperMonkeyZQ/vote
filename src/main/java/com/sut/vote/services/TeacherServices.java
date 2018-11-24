package com.sut.vote.services;

import com.sut.vote.dao.TeacherMapper;
import com.sut.vote.models.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServices {
    @Autowired
    TeacherMapper teacherMapper;
    public Teacher getByName(String name){
        return teacherMapper.selectByName(name);
    }
}
