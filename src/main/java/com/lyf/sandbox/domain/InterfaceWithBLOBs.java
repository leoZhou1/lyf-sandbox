package com.lyf.sandbox.domain;

public class InterfaceWithBLOBs extends Interface {
    private String params;

    private String returnParams;

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params == null ? null : params.trim();
    }

    public String getReturnParams() {
        return returnParams;
    }

    public void setReturnParams(String returnParams) {
        this.returnParams = returnParams == null ? null : returnParams.trim();
    }
}