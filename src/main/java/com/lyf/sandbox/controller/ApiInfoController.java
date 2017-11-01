package com.lyf.sandbox.controller;

import com.lyf.sandbox.service.ApiInvokeService;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@Controller
public class ApiInfoController {

    private final Logger LOGGER = LoggerFactory.getLogger(getClass());
    @Autowired
    private ApiInvokeService apiInvokeService;

    @RequestMapping(value = "/api", method = RequestMethod.POST)
    @ResponseBody
    public String apiRequest(Model model,HttpServletRequest request) throws Exception{
        Long apiId = request.getParameter("method")!=null ? Long.parseLong(request.getParameter("method")) : null;
        Long envId = request.getParameter("env")!=null ? Long.parseLong(request.getParameter("env")) : null;
        String result = "";
        if(!StringUtils.isEmpty(apiId) && !StringUtils.isEmpty(envId)) {
            result = apiInvokeService.exchange(getPairList(request),apiId,envId);
            LOGGER.info("httpClient result:{}",result);
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
    
}
