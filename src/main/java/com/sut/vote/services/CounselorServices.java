package com.sut.vote.services;

import com.sut.vote.dao.CounselorQsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sut.vote.models.CounselorQs;
@Service
public class CounselorServices {
    @Autowired
    CounselorQsMapper counselorQsMapper;
    public void insert(CounselorQs counselorQs){
        counselorQsMapper.insert(counselorQs);
    }
    public boolean equals(CounselorQs counselorQs){
        if (counselorQsMapper.selectByPrimaryKey(counselorQs.getcCode()) == null){
            return false;
        }else {
            return true;
        }

    }
}
