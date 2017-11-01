package com.lyf.sandbox.service;

import org.apache.http.message.BasicNameValuePair;
import org.springframework.util.MultiValueMap;

import java.util.List;

public interface ApiInvokeService {
//    public Object apiInvoke(String paramStr,String apiName);
    
    public String exchange(MultiValueMap<String, String> paramMap, String apiName, String httpMethodType);

    public String exchange(MultiValueMap<String, String> paramMap, Long id, Long env_id);

    public String exchange(List<BasicNameValuePair> pairList, Long id, Long env_id) throws Exception;
}
