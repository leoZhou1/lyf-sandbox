package com.lyf.sandbox.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lyf.sandbox.dao.ApiInfoDao;
import com.lyf.sandbox.domain.ApiInfo;
import com.lyf.sandbox.service.ApiInfoService;

@Service
public class ApiInfoServiceImpl implements ApiInfoService{
	@Autowired
	private ApiInfoDao apiInfoDao;
	@Override
	public List<ApiInfo> getApiInfoList() {
		return apiInfoDao.findAllApiInfo();
	}

}
