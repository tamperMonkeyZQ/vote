package com.sut.vote.models;

import java.math.BigDecimal;

public class CounselorQs {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column counselor_evaluation.C_CODE
     *
     * @mbggenerated
     */
    private String cCode;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column counselor_evaluation.C_TECH_NAME
     *
     * @mbggenerated
     */
    private String cTechName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column counselor_evaluation.C_INSTITUTE_NAME
     *
     * @mbggenerated
     */
    private String cInstituteName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column counselor_evaluation.C_SCORE
     *
     * @mbggenerated
     */
    private BigDecimal cScore;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column counselor_evaluation.C_ELE_QUE
     *
     * @mbggenerated
     */
    private String cEleQue;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    public CounselorQs(String cCode, String cTechName, String cInstituteName, BigDecimal cScore, String cEleQue) {
        this.cCode = cCode;
        this.cTechName = cTechName;
        this.cInstituteName = cInstituteName;
        this.cScore = cScore;
        this.cEleQue = cEleQue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table counselor_evaluation
     *
     * @mbggenerated
     */
    public CounselorQs() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column counselor_evaluation.C_CODE
     *
     * @return the value of counselor_evaluation.C_CODE
     *
     * @mbggenerated
     */
    public String getcCode() {
        return cCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column counselor_evaluation.C_CODE
     *
     * @param cCode the value for counselor_evaluation.C_CODE
     *
     * @mbggenerated
     */
    public void setcCode(String cCode) {
        this.cCode = cCode == null ? null : cCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column counselor_evaluation.C_TECH_NAME
     *
     * @return the value of counselor_evaluation.C_TECH_NAME
     *
     * @mbggenerated
     */
    public String getcTechName() {
        return cTechName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column counselor_evaluation.C_TECH_NAME
     *
     * @param cTechName the value for counselor_evaluation.C_TECH_NAME
     *
     * @mbggenerated
     */
    public void setcTechName(String cTechName) {
        this.cTechName = cTechName == null ? null : cTechName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column counselor_evaluation.C_INSTITUTE_NAME
     *
     * @return the value of counselor_evaluation.C_INSTITUTE_NAME
     *
     * @mbggenerated
     */
    public String getcInstituteName() {
        return cInstituteName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column counselor_evaluation.C_INSTITUTE_NAME
     *
     * @param cInstituteName the value for counselor_evaluation.C_INSTITUTE_NAME
     *
     * @mbggenerated
     */
    public void setcInstituteName(String cInstituteName) {
        this.cInstituteName = cInstituteName == null ? null : cInstituteName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column counselor_evaluation.C_SCORE
     *
     * @return the value of counselor_evaluation.C_SCORE
     *
     * @mbggenerated
     */
    public BigDecimal getcScore() {
        return cScore;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column counselor_evaluation.C_SCORE
     *
     * @param cScore the value for counselor_evaluation.C_SCORE
     *
     * @mbggenerated
     */
    public void setcScore(BigDecimal cScore) {
        this.cScore = cScore;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column counselor_evaluation.C_ELE_QUE
     *
     * @return the value of counselor_evaluation.C_ELE_QUE
     *
     * @mbggenerated
     */
    public String getcEleQue() {
        return cEleQue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column counselor_evaluation.C_ELE_QUE
     *
     * @param cEleQue the value for counselor_evaluation.C_ELE_QUE
     *
     * @mbggenerated
     */
    public void setcEleQue(String cEleQue) {
        this.cEleQue = cEleQue == null ? null : cEleQue.trim();
    }
}