package com.lyf.sandbox.domain;

import java.util.List;

public class ApiInfo {
    private Long id;
    private String apiName;
    private String apiType;
    private String requestType;
    private List<Param> paramList;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getApiName() {
		return apiName;
	}
	public void setApiName(String apiName) {
		this.apiName = apiName;
	}
	public String getApiType() {
		return apiType;
	}
	public void setApiType(String apiType) {
		this.apiType = apiType;
	}
	public String getRequestType() {
		return requestType;
	}
	public void setRequestType(String requestType) {
		this.requestType = requestType;
	}
	public List<Param> getParamList() {
		return paramList;
	}
	public void setParamList(List<Param> paramList) {
		this.paramList = paramList;
	}
    
}
