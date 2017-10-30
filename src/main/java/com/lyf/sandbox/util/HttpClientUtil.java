package com.lyf.sandbox.util;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HttpClientUtil {
	 private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	public void get(String url) {  
        CloseableHttpClient httpclient = HttpClients.createDefault();  
        try {  
            // 创建httpget.    
//            HttpGet httpget = new HttpGet("http://m.lyf.dev.laiyifen.com/api/cart/list?ut=&sessionId=150892388825411&platformId=3&areaCode=310101&receiverId=&v=1.2");
            HttpGet httpget = new HttpGet(url);
            LOGGER.info("executing request " + httpget.getURI());  
            // 执行get请求.    
            CloseableHttpResponse response = httpclient.execute(httpget);  
            try {  
                // 获取响应实体    
                HttpEntity entity = response.getEntity();  
                LOGGER.info("--------------------------------------");  
                // 打印响应状态    
                LOGGER.info(response.getStatusLine().toString());  
                if (entity != null) {  
                    // 打印响应内容长度    
                    LOGGER.info("Response content length: " + entity.getContentLength());  
                    // 打印响应内容    
                    LOGGER.info("Response content: " + EntityUtils.toString(entity));  
                }  
            } finally {  
                response.close();  
            }  
        } catch (ClientProtocolException e) {  
            e.printStackTrace();  
        } catch (ParseException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            // 关闭连接,释放资源    
            try {  
                httpclient.close();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
    }
}
