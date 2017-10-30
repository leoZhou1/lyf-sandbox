package com.lyf.sandbox.service.impl;

import java.io.IOException;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.lyf.sandbox.service.ApiInvokeService;

@Service
public class ApiInvokeServiceImpl implements ApiInvokeService {
	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	@Autowired
	private RestTemplate restTemplate;
	@Value(value = "${api.domain}")
	private String domain;

	public Object apiInvoke(String paramStr, String apiName) {
		String url = domain + apiName + "?" + paramStr;
		LOGGER.info(url);
		Object obj = restTemplate.getForObject(url, Object.class);
		LOGGER.info("object:{}", obj);
		return obj;
	}

	public String exchange(MultiValueMap<String, String> paramMap, String apiName, String httpMethodType) {
		HttpHeaders headers = new HttpHeaders();
		// 请勿轻易改变此提交方式，大部分的情况下，提交方式都是表单提交
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		String url = domain + apiName;
		
		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<MultiValueMap<String, String>>(paramMap, headers);
		//  执行HTTP请求
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.resolve(httpMethodType), requestEntity, String.class);
		
		return response.getBody();
	}

}
