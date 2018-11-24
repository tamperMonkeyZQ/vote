package com.sut.vote;

import com.sut.vote.dao.MentalQsMapper;
import com.sut.vote.models.MentalQs;
import com.sut.vote.models.Result;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class VoteApplicationTests {

    @Autowired
    MentalQsMapper mentalQsMapper;
    @Test
    public void contextLoads() {
        mentalQsMapper.processCalc();
        List<Result> list = mentalQsMapper.selectResult();
        System.out.println();
    }

}
