package com.lyf.sandbox.dao;

import com.lyf.sandbox.domain.ApiInfo;

import java.util.List;

public interface ApiInfoDao {
    public ApiInfo getApiInfoById(Long id);

    public List<ApiInfo> findAllApiInfo(); 
}
