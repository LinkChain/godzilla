package cn.godzilla.model;

import java.util.Date;

public class SvnChangeLog {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.id
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.user_name
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private String userName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.type
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private Integer type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.repository_url
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private String repositoryUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.file_name
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private String fileName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.create_time
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.result_status
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private Integer resultStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_g_svn_change_logs.result_info
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    private String resultInfo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.id
     *
     * @return the value of t_g_svn_change_logs.id
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.id
     *
     * @param id the value for t_g_svn_change_logs.id
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.user_name
     *
     * @return the value of t_g_svn_change_logs.user_name
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public String getUserName() {
        return userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.user_name
     *
     * @param userName the value for t_g_svn_change_logs.user_name
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.type
     *
     * @return the value of t_g_svn_change_logs.type
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public Integer getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.type
     *
     * @param type the value for t_g_svn_change_logs.type
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.repository_url
     *
     * @return the value of t_g_svn_change_logs.repository_url
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public String getRepositoryUrl() {
        return repositoryUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.repository_url
     *
     * @param repositoryUrl the value for t_g_svn_change_logs.repository_url
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setRepositoryUrl(String repositoryUrl) {
        this.repositoryUrl = repositoryUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.file_name
     *
     * @return the value of t_g_svn_change_logs.file_name
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.file_name
     *
     * @param fileName the value for t_g_svn_change_logs.file_name
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.create_time
     *
     * @return the value of t_g_svn_change_logs.create_time
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.create_time
     *
     * @param createTime the value for t_g_svn_change_logs.create_time
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.result_status
     *
     * @return the value of t_g_svn_change_logs.result_status
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public Integer getResultStatus() {
        return resultStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.result_status
     *
     * @param resultStatus the value for t_g_svn_change_logs.result_status
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setResultStatus(Integer resultStatus) {
        this.resultStatus = resultStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_g_svn_change_logs.result_info
     *
     * @return the value of t_g_svn_change_logs.result_info
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public String getResultInfo() {
        return resultInfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_g_svn_change_logs.result_info
     *
     * @param resultInfo the value for t_g_svn_change_logs.result_info
     *
     * @mbggenerated Wed Jun 10 19:29:50 CST 2015
     */
    public void setResultInfo(String resultInfo) {
        this.resultInfo = resultInfo;
    }
}