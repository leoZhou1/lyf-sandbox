package com.lyf.sandbox.domain;

import java.util.Date;
import java.util.List;

public class Project {
    private Long id;

    private String name;

    private Date createDate;

    private Boolean isDeleted;
    /** 分类集合 */
    private List<InterfaceCate> interfaceCateList;

    private List<ProjectEnv> projectEnvList;

    private List<ParamList> paramListList;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Boolean getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public List<InterfaceCate> getInterfaceCateList() {
        return interfaceCateList;
    }

    public void setInterfaceCateList(List<InterfaceCate> interfaceCateList) {
        this.interfaceCateList = interfaceCateList;
    }

    public List<ProjectEnv> getProjectEnvList() {
        return projectEnvList;
    }

    public void setProjectEnvList(List<ProjectEnv> projectEnvList) {
        this.projectEnvList = projectEnvList;
    }

    public List<ParamList> getParamListList() {
        return paramListList;
    }

    public void setParamListList(List<ParamList> paramListList) {
        this.paramListList = paramListList;
    }
}