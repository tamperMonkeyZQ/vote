package com.sut.vote.dao;

import com.sut.vote.models.CounselorResult;
import com.sut.vote.models.ProfessionalQs;

import java.util.List;

public interface ProfessionalQsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table professional_assessment
     *
     * @mbggenerated
     */
    int insert(ProfessionalQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table professional_assessment
     *
     * @mbggenerated
     */
    int insertSelective(ProfessionalQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table professional_assessment
     *
     * @mbggenerated
     */
    ProfessionalQs selectByPrimaryKey(String cCode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table professional_assessment
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ProfessionalQs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table professional_assessment
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ProfessionalQs record);
    List<CounselorResult> professionalSearch();

}