package com.lyf.sandbox.domain;

import java.util.Date;

public class Interface {
    private Long id;

    private String name;

    private String interfaceUrl;

    private Date createDate;

    private Integer isDeleted;

    private Long projectId;

    private Long interfaceCateId;

    private Integer canInvokeProductenv;

    private String headerParams;

    private Integer httpMethod;

    private String params;

    private String returnParams;

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

    public String getInterfaceUrl() {
        return interfaceUrl;
    }

    public void setInterfaceUrl(String interfaceUrl) {
        this.interfaceUrl = interfaceUrl == null ? null : interfaceUrl.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }


    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public Long getInterfaceCateId() {
        return interfaceCateId;
    }

    public void setInterfaceCateId(Long interfaceCateId) {
        this.interfaceCateId = interfaceCateId;
    }


    public String getHeaderParams() {
        return headerParams;
    }

    public void setHeaderParams(String headerParams) {
        this.headerParams = headerParams == null ? null : headerParams.trim();
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Integer getCanInvokeProductenv() {
        return canInvokeProductenv;
    }

    public void setCanInvokeProductenv(Integer canInvokeProductenv) {
        this.canInvokeProductenv = canInvokeProductenv;
    }

    public Integer getHttpMethod() {
        return httpMethod;
    }

    public void setHttpMethod(Integer httpMethod) {
        this.httpMethod = httpMethod;
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public String getReturnParams() {
        return returnParams;
    }

    public void setReturnParams(String returnParams) {
        this.returnParams = returnParams;
    }

    @Override
    public String toString() {
        return "Interface{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", interfaceUrl='" + interfaceUrl + '\'' +
                ", createDate=" + createDate +
                ", isDeleted=" + isDeleted +
                ", projectId=" + projectId +
                ", interfaceCateId=" + interfaceCateId +
                ", canInvokeProductenv=" + canInvokeProductenv +
                ", headerParams='" + headerParams + '\'' +
                ", httpMethod=" + httpMethod +
                ", params='" + params + '\'' +
                ", returnParams='" + returnParams + '\'' +
                '}';
    }
}