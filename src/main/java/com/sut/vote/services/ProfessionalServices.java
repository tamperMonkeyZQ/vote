package com.sut.vote.services;

import com.sut.vote.dao.ProfessionalQsMapper;
import com.sut.vote.models.ProfessionalQs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfessionalServices {
    @Autowired
    ProfessionalQsMapper professionalQsMapper;
    public void insert(ProfessionalQs professionalQs){
        professionalQsMapper.insert(professionalQs);
    }
    public boolean ifCompete(ProfessionalQs professionalQs){
        if(professionalQsMapper.selectByPrimaryKey(professionalQs.getcCode()) == null)
            return false;
        return true;
    }
}
