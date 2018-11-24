package com.sut.vote.services;

import com.sut.vote.dao.LearningQsMapper;
import com.sut.vote.models.LearningQs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LearningServices  {
    @Autowired
    LearningQsMapper learningQsMapper;
    /**将表单信息提交到数据库
     * @Param learningQs 学习问卷表单
     */
    public void insert(LearningQs learningQs){learningQsMapper.insert(learningQs); }
    /**
     * 判断问卷是否已经填写完
     * */
    public boolean equals(LearningQs learningQs){
        if (learningQsMapper.selectByPrimaryKey(learningQs.getcCode()) == null)
        {return false;}
        else{return true;}
    }
}
