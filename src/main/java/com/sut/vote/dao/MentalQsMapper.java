package com.sut.vote.dao;

import com.sut.vote.models.MentalQs;
import org.springframework.stereotype.Repository;

@Repository
public interface MentalQsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mental_questionnaire
     *
     * @mbggenerated
     */
    int insert(MentalQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mental_questionnaire
     *
     * @mbggenerated
     */
    int insertSelective(MentalQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mental_questionnaire
     *
     * @mbggenerated
     */
    MentalQs selectByPrimaryKey(String cCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mental_questionnaire
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(MentalQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mental_questionnaire
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(MentalQs record);
}