package com.lyf.sandbox.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lyf.sandbox.service.ApiInvokeService;
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
    public String apiRequest(Model model,HttpServletRequest request) throws JsonProcessingException {
    	MultiValueMap<String, String> paramMap = getParamMap(request);
        request.getParameterMap();
        String apiName = request.getParameter("method");
        String httpMethodType = request.getParameter("httpMethodType");
        if(!StringUtils.isEmpty(apiName)) {
        	String result = apiInvokeService.exchange(paramMap,apiName,httpMethodType);
        	LOGGER.info("result:{}",result);
            model.addAttribute("result",result);
        }
        return "result";
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

    private String getParamsStr(HttpServletRequest request) {
        StringBuilder sb = new StringBuilder();
        try {
            Enumeration<String> paramNames = request.getParameterNames();
            while (paramNames.hasMoreElements()) {
                String paramName = (String) paramNames.nextElement();
                String[] paramValues = request.getParameterValues(paramName);
                if (paramValues.length == 1) {
                    String paramValue = paramValues[0];
                    List<String> list = new ArrayList<String>();
                    list.add(paramValue);
                    sb.append("&"+paramName+"="+paramValue);
                }
            }
        } catch (Exception e) {
            LOGGER.error("转换request参数错误" +e.getMessage());
        }
        LOGGER.info("paramsStr : {}", sb);
        return sb.substring(1);
    }
}
