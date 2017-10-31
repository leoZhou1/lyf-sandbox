package com.lyf.sandbox.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lyf.sandbox.service.ApiInvokeService;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ApiInfoController {

    private final Logger LOGGER = LoggerFactory.getLogger(getClass());
    @Autowired
    private ApiInvokeService apiInvokeService;

    @RequestMapping(value = "/api", method = RequestMethod.POST)
    @ResponseBody
    public String apiRequest(Model model,HttpServletRequest request) {
    	MultiValueMap<String, String> paramMap = getParamMap(request);
        Long apiId = request.getParameter("method")!=null ? Long.parseLong(request.getParameter("method")) : null;
        Long envId = request.getParameter("env")!=null ? Long.parseLong(request.getParameter("env")) : null;
        String result = "";
        if(!StringUtils.isEmpty(apiId) && !StringUtils.isEmpty(envId)) {
            result = apiInvokeService.exchange(paramMap,apiId,envId);
//        	result = apiInvokeService.exchange(paramMap,apiId,httpMethodType);
//            model.addAttribute("result",result);
            LOGGER.info("result:{}",result);
        }
        return result;
    }

    private List<BasicNameValuePair> getPairList(HttpServletRequest request){
        List<BasicNameValuePair> pairList = new ArrayList<BasicNameValuePair>();
        Enumeration<String> paramNames = request.getParameterNames();
        while (paramNames.hasMoreElements()) {
            String paramName = (String) paramNames.nextElement();
            String[] paramValues = request.getParameterValues(paramName);
            if (paramValues.length == 1) {
                String paramValue = paramValues[0];
                pairList.add(new BasicNameValuePair(paramName, paramValue));
            }
        }
        return pairList;
    }
    
    private MultiValueMap<String, String> getParamMap(HttpServletRequest request){
    	MultiValueMap<String, String> paramMap = new LinkedMultiValueMap<String, String>();
    	Enumeration<String> paramNames = request.getParameterNames();
        while (paramNames.hasMoreElements()) {
            String paramName = (String) paramNames.nextElement();
            String[] paramValues = request.getParameterValues(paramName);
            if (paramValues.length == 1) {
                String paramValue = paramValues[0];
                List<String> list = new ArrayList<String>();
                list.add(paramValue);
                paramMap.put(paramName, list);
            }
        }
        return paramMap;
    }

}
