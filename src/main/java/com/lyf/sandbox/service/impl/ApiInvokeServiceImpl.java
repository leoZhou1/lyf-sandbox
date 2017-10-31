package com.lyf.sandbox.service.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.lyf.sandbox.dao.InterfaceMapper;
import com.lyf.sandbox.dao.ProjectEnvMapper;
import com.lyf.sandbox.dao.ProjectMapper;
import com.lyf.sandbox.domain.Interface;
import com.lyf.sandbox.domain.Project;
import com.lyf.sandbox.domain.ProjectEnv;
import com.lyf.sandbox.util.HttpClientUtil;
import org.apache.http.message.BasicNameValuePair;
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
	private InterfaceMapper interfaceMapper;
	@Autowired
	private ProjectEnvMapper projectEnvMapper;

	@Autowired
	private RestTemplate restTemplate;
	@Value(value = "${api.domain}")
	private String domain;

	public String exchange(MultiValueMap<String, String> paramMap, String apiName, String httpMethodType) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		String url = domain + apiName;
		
		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<MultiValueMap<String, String>>(paramMap, headers);
		//  执行HTTP请求
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.resolve(httpMethodType), requestEntity, String.class);
		
		return response.getBody();
	}

	public String exchange(List<BasicNameValuePair> pairList, Long id, Long env_id){

		return null;
	}

	public String exchange(MultiValueMap<String, String> paramMap, Long id, Long env_id) {
		String httpMethodType = null;
		Interface inter = interfaceMapper.selectByPrimaryKey(id);
		ProjectEnv projectEnv = projectEnvMapper.selectByPrimaryKey(env_id);
		String apiDomain = projectEnv.getApiDomain();
		String interfaceUrl = inter.getInterfaceUrl();
		int methodType = inter.getHttpMethod();
		switch (methodType){
			case 0:
				httpMethodType = "GET";
				break;
			case 1:
				httpMethodType = "POST";
				break;
			default:
				httpMethodType = "GET";
		}
		String url = apiDomain + interfaceUrl;
		LOGGER.info("url:{}",url);
		HttpClientUtil.get("http://m.lyf.dev.laiyifen.com/api/cart/list?ut=&sessionId=150892388825411&platformId=3&areaCode=310101&receiverId=&v=1.2");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<MultiValueMap<String, String>>(paramMap, headers);
		//  执行HTTP请求
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.resolve(httpMethodType), requestEntity, String.class);

		return response.getBody();
	}

}
