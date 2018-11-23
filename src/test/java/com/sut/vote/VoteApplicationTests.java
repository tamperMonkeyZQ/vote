package com.sut.vote;

import com.sut.vote.dao.MentalQsMapper;
import com.sut.vote.models.MentalQs;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class VoteApplicationTests {

    @Autowired
    MentalQsMapper mentalQsMapper;
    @Test
    public void contextLoads() {
        System.out.println("151203426".substring(2, 4));
    }

}
