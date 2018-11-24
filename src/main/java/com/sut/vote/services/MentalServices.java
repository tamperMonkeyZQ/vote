package com.sut.vote.services;

import com.sut.vote.dao.MentalQsMapper;
import com.sut.vote.models.MentalQs;
import com.sut.vote.models.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MentalServices {
    @Autowired
    MentalQsMapper mentalQsMapper;
    public void insert(MentalQs mentalQs){
        mentalQsMapper.insert(mentalQs);
    }
    public boolean ifCompete(MentalQs mentalQs){
        if(mentalQsMapper.selectByPrimaryKey(mentalQs.getcCode()) == null)
            return false;
        return true;
    }
}
