package com.lyf.sandbox.domain;

import java.util.Date;

public class Interface {
    private Long id;

    private String name;

    private String interfaceUrl;

    private Date createDate;

    private Byte isDeleted;

    private Long projectId;

    private Long interfaceCateId;

    private Boolean canInvokeProductenv;

    private String headerParams;

    private Boolean httpMethod;

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

    public Byte getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Byte isDeleted) {
        this.isDeleted = isDeleted;
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

    public Boolean getCanInvokeProductenv() {
        return canInvokeProductenv;
    }

    public void setCanInvokeProductenv(Boolean canInvokeProductenv) {
        this.canInvokeProductenv = canInvokeProductenv;
    }

    public String getHeaderParams() {
        return headerParams;
    }

    public void setHeaderParams(String headerParams) {
        this.headerParams = headerParams == null ? null : headerParams.trim();
    }

    public Boolean getHttpMethod() {
        return httpMethod;
    }

    public void setHttpMethod(Boolean httpMethod) {
        this.httpMethod = httpMethod;
    }
}