package com.lyf.sandbox.service;

import org.springframework.util.MultiValueMap;

public interface ApiInvokeService {
    public Object apiInvoke(String paramStr,String apiName);
    
    public String exchange(MultiValueMap<String, String> paramMap, String apiName, String httpMethodType);
}
