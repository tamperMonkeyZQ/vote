package com.sut.vote.dao;

import com.sut.vote.models.CounselorQs;

public interface CounselorQsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    int insert(CounselorQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    int insertSelective(CounselorQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    CounselorQs selectByPrimaryKey(String cCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(CounselorQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(CounselorQs record);
}