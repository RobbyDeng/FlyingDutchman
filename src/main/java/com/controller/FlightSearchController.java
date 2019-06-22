package com.controller;

import com.pojo.DataItem;
import com.pojo.DataSource;
import com.pojo.Privilege;
import com.pojo.User;
import com.service.*;
import com.utils.helper.FileReader;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/**
 * Created by dell on 2019/3/14.
 */
@Controller
@RequestMapping("/flightSearch")
public class FlightSearchController {
    @Autowired
    private UserService userService;
    @Autowired
    private BrowseRecordService browseRecordService;
    @Autowired
    private PrivilegeService privilegeService;
    @Autowired
    private RolePrivilegeService rolePrivilegeService;
    @Autowired
    private DataItemService dataItemService;
    @Autowired
    private DataSourceService dataSourceService;

    private static HashMap<String, String> map = new HashMap<String, String>();

//    网址:https://www.ctrip.com/,可选字段:航空公司代码#航空公司名称#航班号#出发城市#到达城市#日期#出发机场#到达机场#出发时间#到达时间#舱位#价格#折扣率#准点率
    static {
        map.put("airlineCode", "航空公司代码");
        map.put("airlineName", "航空公司名称");
        map.put("flightNumber", "航班号");
        map.put("craftTypeName", "飞机型号");
        map.put("depCity", "出发城市");
        map.put("arrCity", "到达城市");
        map.put("date", "日期");
        map.put("deAirport", "出发机场");
        map.put("arrAirport", "到达机场");
        map.put("departureTime", "出发时间");
        map.put("arrivalTime", "到达时间");
        map.put("cabinClass", "舱位");
        map.put("price", "价格");
        map.put("rate", "折扣率");
        map.put("puntualityRate", "准点率");
    }

    // 页面跳转部分
    @RequestMapping("/toFlightQuery")
    public String toFlightQuery(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        DataItem dataItem = dataItemService.queryDataItemByModule("航班查询");
        List<String> list = Arrays.asList(dataItem.getFieldList().split("#"));
        model.addAttribute("fieldList", list);

        return "flight_query";
    }

    @RequestMapping("/toLineQuery")
    public String toLineQuery(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        DataItem dataItem = dataItemService.queryDataItemByModule("航线查询");
//        List<String> list = Arrays.asList("airlineName", "date", "craftTypeName", "departureTime", "arrivalTime", "deAirport", "arrAirport", "arrCity", "depCity");
        List<String> list = Arrays.asList(dataItem.getFieldList().split("#"));
        model.addAttribute("fieldList", list);

        return "line_query";
    }

    @RequestMapping("/toPriceQuery")
    public String toPriceQuery(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        DataItem dataItem = dataItemService.queryDataItemByModule("票价查询");
        System.out.println(dataItem.getFieldList());
        List<String> list = Arrays.asList(dataItem.getFieldList().split("#"));
        model.addAttribute("fieldList", list);

        return "price_query";
    }

    @RequestMapping("/toWeatherQuery")
    public String toWeatherQuery(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
        return "weather_query";
    }

    @RequestMapping("/toFlightData")
    public String toFlightData(Model model, String username, String data){
        System.out.println(data);
        model.addAttribute("username", username);
        model.addAttribute("data", data);

        return "flight_data";
    }

    // 功能执行部分
    @RequestMapping("/queryLine")
    @ResponseBody
    public JSONObject queryLine(Model model, String depart, String arrive, String date){
//        System.out.println(depart + "@@@" + arrive + "@@@" + date);
        DataItem dataItem = dataItemService.queryDataItemByModule("航班查询");
        int dataSourceId = dataItem.getDataSourceId();
        DataSource dataSource = dataSourceService.queryDataSourceById(dataSourceId);
        String name = dataSource.getName();

        String sourceName = "";
        if (name.equals("携程")){
            sourceName = "ctrip";
        }else if (name.equals("途牛")){
            sourceName = "tuniu";
        }else if (name.equals("苏宁")){
            sourceName = "suning";
        }

//        CityFilterDriver cityFilterDriver = new CityFilterDriver();
//        cityFilterDriver.setSrcName(sourceName);
//        cityFilterDriver.setDepartureCity(depart);
//        cityFilterDriver.setArrivalCity(arrive);
//        cityFilterDriver.setDate(date);
//        try {
//            cityFilterDriver.init();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

        FileReader fileReader = new FileReader(sourceName, depart, arrive, date);
        fileReader.Reader();
        JSONArray array = fileReader.getResult();
        System.out.println(array.toString());

        // 字段筛选
        String[] fieldList = dataItem.getFieldList().split("#");
        List<String> list = Arrays.asList(fieldList);
        HashMap<String, HashMap<String, String>> resultMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < array.size(); i++){
            HashMap<String, String> tempMap = new HashMap<String, String>();
            JSONObject object = array.getJSONObject(i);
            Iterator iterator = object.keys();
            while (iterator.hasNext()){
                String key = (String) iterator.next();
                String value = object.getString(key);
                // 设置为新的key值
                key = map.get(key);
                if (list.contains(key)){
                    tempMap.put(key, value);
                }
            }

            resultMap.put("" + i, tempMap);
        }

        System.out.println(JSONObject.fromObject(resultMap));
        return JSONObject.fromObject(resultMap);
    }

    @RequestMapping("/queryPrice")
    @ResponseBody
    public JSONObject queryPrice(Model model, String depart, String arrive, String date){
        System.out.println(depart + ": " + arrive + ": " + date);
        DataItem dataItem = dataItemService.queryDataItemByModule("票价查询");
        int dataSourceId = dataItem.getDataSourceId();
        DataSource dataSource = dataSourceService.queryDataSourceById(dataSourceId);
        String name = dataSource.getName();

        String sourceName = "";
        if (name.equals("携程")){
            sourceName = "ctrip";
        }else if (name.equals("途牛")){
            sourceName = "tuniu";
        }else if (name.equals("苏宁")){
            sourceName = "suning";
        }

//        CityFilterDriver cityFilterDriver = new CityFilterDriver();
//        cityFilterDriver.setSrcName(sourceName);
//        cityFilterDriver.setDepartureCity(depart);
//        cityFilterDriver.setArrivalCity(arrive);
//        cityFilterDriver.setDate(date);
//        try {
//            cityFilterDriver.init();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

        FileReader fileReader = new FileReader(sourceName, depart, arrive, date);
        fileReader.Reader();
        JSONArray array = fileReader.getResult();
        System.out.println(array.toString());

        // 字段筛选
        String[] fieldList = dataItem.getFieldList().split("#");
        List<String> list = Arrays.asList(fieldList);
        HashMap<String, HashMap<String, String>> resultMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < array.size(); i++){
            HashMap<String, String> tempMap = new HashMap<String, String>();
            JSONObject object = array.getJSONObject(i);
            Iterator iterator = object.keys();
            while (iterator.hasNext()){
                String key = (String) iterator.next();
                String value = object.getString(key);
                // 设置为新的key值
                key = map.get(key);
                if (list.contains(key)){
                    tempMap.put(key, value);
                }
            }

            resultMap.put("" + i, tempMap);
        }

        return JSONObject.fromObject(resultMap);
    }

    @RequestMapping("/queryFlight")
    @ResponseBody
    public JSONObject queryFlight(Model model, String flightCode, String date){
        DataItem dataItem = dataItemService.queryDataItemByModule("航班查询");
        int dataSourceId = dataItem.getDataSourceId();
        DataSource dataSource = dataSourceService.queryDataSourceById(dataSourceId);
        String name = dataSource.getName();

        String sourceName = "";
        if (name.equals("携程")){
            sourceName = "ctrip";
        }else if (name.equals("途牛")){
            sourceName = "tuniu";
        }else if (name.equals("苏宁")){
            sourceName = "suning";
        }

//        FlightFilterDriver flightFilterDriver = new FlightFilterDriver();
//        flightFilterDriver.setFlightNumber(flightCode);
//        flightFilterDriver.setDate(date);
//        flightFilterDriver.setSrcName(sourceName);
//        try {
//            flightFilterDriver.init();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

        FileReader fileReader = new FileReader(sourceName,flightCode,date);
        fileReader.Reader();
        JSONArray array = fileReader.getResult();

        // 筛选字段
        String[] fieldList = dataItem.getFieldList().split("#");
        List<String> list = Arrays.asList(fieldList);
        HashMap<String, HashMap<String, String>> resultMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < array.size(); i++){
            HashMap<String, String> tempMap = new HashMap<String, String>();
            JSONObject object = array.getJSONObject(i);
            Iterator iterator = object.keys();
            while (iterator.hasNext()){
                String key = (String) iterator.next();
                String value = object.getString(key);
                // 设置为新的key值
                key = map.get(key);
                if (list.contains(key)){
                    tempMap.put(key, value);
                }
            }

            resultMap.put("" + i, tempMap);
        }

        return JSONObject.fromObject(resultMap);
    }

    private HashMap<String, HashMap<String, Privilege>> getPrivilegeList(){
        List<Privilege> privilegeList = privilegeService.queryAllPrivilege();
        HashMap<String, HashMap<String, Privilege>> rootMap = new HashMap<String, HashMap<String, Privilege>>();
        rootMap.put("0", new HashMap<String, Privilege>());
        for (int i = 0; i < privilegeList.size(); i++){
            Privilege privilege = privilegeList.get(i);
            if (privilege.getId().length() == 2){
                // 添加一个一级权限
                HashMap<String, Privilege> subMap = rootMap.get("0");
                subMap.put(privilege.getId(), privilege);
                rootMap.put("0", subMap);

                // 为一个一级权限创建list
                subMap = new HashMap<String, Privilege>();
                rootMap.put(privilege.getId(), subMap);
            }else{
                HashMap<String, Privilege> subMap = rootMap.get(privilege.getParentPrivilege());
                subMap.put(privilege.getId(), privilege);
                rootMap.put(privilege.getParentPrivilege(), subMap);
            }
        }

        return rootMap;
    }

    private HashMap<String, HashMap<String, Privilege>> getUserPrivilege(int roleId){
        HashMap<String, HashMap<String, Privilege>> rootPrivilege = getPrivilegeList();
        List<String> list = rolePrivilegeService.queryRolePrivilegeByRoleId(roleId);
        HashMap<String, HashMap<String, Privilege>> privilegeMap = new HashMap<String, HashMap<String, Privilege>>();
        HashMap<String, Privilege> rootMap = new HashMap<String, Privilege>();
        privilegeMap.put("0", rootMap);
        for (int i = 0; i < list.size(); i++){
            String key = list.get(i).substring(0, 2);
            if (privilegeMap.get(key) == null){
                HashMap<String, Privilege> mapSub = new HashMap<String, Privilege>();
                mapSub.put(list.get(i), rootPrivilege.get(key).get(list.get(i)));
                privilegeMap.put(key, mapSub);

                // 添加一个一级权限
                HashMap<String, Privilege> mapRoot = privilegeMap.get("0");
                mapRoot.put(key, rootPrivilege.get("0").get(key));
            }else{
                HashMap<String, Privilege> mapSub = privilegeMap.get(key);
                mapSub.put(list.get(i), rootPrivilege.get(key).get(list.get(i)));
                privilegeMap.put(key, mapSub);
            }
        }

        System.out.println(JSONObject.fromObject(privilegeMap).toString());
        return privilegeMap;
    }
}
