package com.sut.vote.services;

import com.sut.vote.dao.MentalQsMapper;
import com.sut.vote.dao.RecordMapper;
import com.sut.vote.models.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordServices {
    @Autowired
    RecordMapper recordMapper;
    public void insert(Record record){
        recordMapper.insert(record);
    }
}
