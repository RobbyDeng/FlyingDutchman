package com.utils.flask;

import net.sf.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class Spider implements SpiderInterface {
    //携程票价爬虫
    @Override
    public void ctripSpider(Integer startDateIndex, Integer dayCount){
        Map<String, String> m = new HashMap<String, String>();
        m.put("startDateIndex", startDateIndex.toString());
        m.put("dayCount", dayCount.toString());
        String url = "http://192.168.43.156:7000/api/ctripSpider";
        JSONObject jsonobject = JSONObject.fromObject(m);
        JSONObject response = HttpUtil.doPost(url, jsonobject);
        if(((Map)response).get("statusCode").equals("200")){
            System.out.println("已经开始爬取携程票价");
        }
    }

    //途牛票价爬虫
    @Override
    public void tuniuSpider(Integer startDateIndex, Integer dayCount){
        Map<String, String> m = new HashMap<String, String>();
        m.put("startDateIndex", startDateIndex.toString());
        m.put("dayCount", dayCount.toString());
        String url = "http://192.168.43.156:7000/api/tuniuSpider";
        JSONObject jsonobject = JSONObject.fromObject(m);
        JSONObject response = HttpUtil.doPost(url, jsonobject);
        if(((Map)response).get("statusCode").equals("200")){
            System.out.println("已经开始爬取途牛票价");
        }
    }

    //苏宁票价爬虫
    @Override
    public void suningSpider(Integer startDateIndex, Integer dayCount) {
        Map<String, String> m = new HashMap<String, String>();
        m.put("startDateIndex", startDateIndex.toString());
        m.put("dayCount", dayCount.toString());
        String url = "http://192.168.43.156:7000/api/suningSpider";
        JSONObject jsonobject = JSONObject.fromObject(m);
        JSONObject response = HttpUtil.doPost(url, jsonobject);
        if(((Map)response).get("statusCode").equals("200")){
            System.out.println("已经开始爬取苏宁票价");
        }
    }
    //飞常准航班信息爬虫
    @Override
    public void variflightSpider(Integer startDateIndex, Integer dayCount) {
        Map<String, String> m = new HashMap<String, String>();
        m.put("startDateIndex", startDateIndex.toString());
        m.put("dayCount", dayCount.toString());
        String url = "http://192.168.43.156:7000/api/variFlightSpider";
        JSONObject jsonobject = JSONObject.fromObject(m);
        JSONObject response = HttpUtil.doPost(url, jsonobject);
        if(((Map)response).get("statusCode").equals("200")){
            System.out.println("已经开始爬取VariFlight航班信息");
        }
    }


    public static void testGet(){

        String url = "http://192.168.43.156:7000/api/testGet";
        String s = HttpUtil.doGet(url);
        System.out.println(s);

    }

}
