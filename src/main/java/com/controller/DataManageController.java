package com.controller;

import com.pojo.*;
import com.service.*;
import com.utils.TxtFileOperator;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * Created by dell on 2019/3/14.
 */
@Controller
@RequestMapping("/dataManage")
public class DataManageController {
    @Autowired
    private UserService userService;
    @Autowired
    private DataTypeService dataTypeService;
    @Autowired
    private DataSourceService dataSourceService;
    @Autowired
    private DataItemService dataItemService;
    @Autowired
    private BrowseRecordService browseRecordService;
    @Autowired
    private PrivilegeService privilegeService;
    @Autowired
    private RolePrivilegeService rolePrivilegeService;

    private Timer timer;

    // 页面跳转部分
    @RequestMapping("/toDataType")
    public String toDataType(Model model, String username){
        // 传输用户名和浏览总人数
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        // 传输用户权限
        User user = userService.queryUserByName(username);
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        // 传输数据类型列表
//        List<DataType> list = dataTypeService.getAllDataType();
//        model.addAttribute("dataTypeList", list);
        List<DataType> dataTypeList = dataTypeService.getAllDataType();
        Map<String, DataType> dataTypeMap = new HashMap<String, DataType>();
        for (int i = 0; i < dataTypeList.size(); i++){
            DataType dataType = dataTypeList.get(i);
            dataTypeMap.put("" + dataType.getId(), dataType);
        }
        model.addAttribute("dataTypeList", JSONObject.fromObject(dataTypeMap).toString());

        return "data_type";
    }

    @RequestMapping("/toDataOrigin")
    public String toDataOrigin(Model model, String username){
        // 传输用户名和浏览总人数
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        // 传输用户权限
        User user = userService.queryUserByName(username);
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        // 传输数据类型
        List<DataType> dataTypeList = dataTypeService.getAllDataType();
        Map<String, DataType> dataTypeMap = new HashMap<String, DataType>();
        for (int i = 0; i < dataTypeList.size(); i++){
            DataType dataType = dataTypeList.get(i);
            dataTypeMap.put("" + dataType.getId(), dataType);
        }

        model.addAttribute("dataTypeList", JSONObject.fromObject(dataTypeMap).toString());

        // 传输数据源
        List<DataSource> dataSourceList = dataSourceService.getAllDataSource();
        HashMap<String, HashMap<String, String>> dataSourceMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < dataSourceList.size(); i++){
            DataSource dataSource = dataSourceList.get(i);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("name", dataSource.getName());
            map.put("dataTypeId", "" + dataSource.getDataTypeId());
            map.put("dataTypeName", dataTypeMap.get("" + dataSource.getDataTypeId()).getName());
            map.put("fieldList", dataSource.getFieldList());

            dataSourceMap.put("" + dataSource.getId(), map);
        }
        model.addAttribute("dataSourceList", JSONObject.fromObject(dataSourceMap).toString());

        return "data_origin";
    }

    @RequestMapping("/toDataItem")
    public String toDataItem(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        // 传输用户权限
        User user = userService.queryUserByName(username);
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        // 传输数据源
        List<DataType>  dataTypeList = dataTypeService.getAllDataType();
        Map<String, DataType> dataTypeMap = new HashMap<String, DataType>();
        for (int i = 0; i < dataTypeList.size(); i++){
            DataType dataType = dataTypeList.get(i);
            dataTypeMap.put("" + dataType.getId(), dataType);
        }

        model.addAttribute("dataTypeList", JSONObject.fromObject(dataTypeMap).toString());

        // 传输数据源
        List<DataSource> dataSourceList = dataSourceService.getAllDataSource();
        HashMap<String, HashMap<String, String>> dataSourceMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < dataSourceList.size(); i++){
            DataSource dataSource = dataSourceList.get(i);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("name", dataSource.getName());
            map.put("dataTypeId", "" + dataSource.getDataTypeId());
            map.put("dataTypeName", dataTypeMap.get("" + dataSource.getDataTypeId()).getName());
            map.put("fieldList", dataSource.getFieldList());

            dataSourceMap.put("" + dataSource.getId(), map);
        }
        model.addAttribute("dataSourceList", JSONObject.fromObject(dataSourceMap).toString());


        // 传输数据项
        List<DataItem> dataItemList = dataItemService.getAllDataItem();
        HashMap<String, HashMap<String, String>> dataItemMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < dataItemList.size(); i++){
            DataItem dataItem = dataItemList.get(i);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("name", dataItem.getName());
            map.put("dataSourceId", "" + dataItem.getDataSourceId());
            map.put("dataSourceName", dataSourceMap.get("" + dataItem.getDataSourceId()).get("name"));
            map.put("module", dataItem.getModule());
            map.put("fieldList", dataItem.getFieldList());

            dataItemMap.put("" + dataItem.getId(), map);
        }
        model.addAttribute("dataItemList", JSONObject.fromObject(dataItemMap).toString());

        return "data_item";
    }

    @RequestMapping("/toDataSetClock")
    public String toDataSetClock(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        // 传输用户权限
        User user = userService.queryUserByName(username);
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        // 传输数据项
        List<DataItem> dataItemList = dataItemService.getAllDataItem();
        HashMap<String, String> dataItemMap = new HashMap<String, String>();
        for (int i = 0; i < dataItemList.size(); i++){
            DataItem dataItem = dataItemList.get(i);
            dataItemMap.put("" + dataItem.getId(), dataItem.getName());
        }
        model.addAttribute("dataItemList", JSONObject.fromObject(dataItemMap).toString());

        return "data_set_clock";
    }

    // 功能执行部分
    // 数据类型管理
    @RequestMapping("/addDataType")
    @ResponseBody
    public String addDataType(Model model, String name, String fieldList){
        DataType dataType = dataTypeService.queryDataTypeByName(name);
        if (dataType != null){
            return "No";
        }

        dataType = new DataType();
        dataType.setName(name);
        dataType.setFieldList(fieldList);
        dataTypeService.addDataType(dataType);

        return "" + dataTypeService.queryDataTypeByName(name).getId();
    }

    @RequestMapping("/updateDataType")
    @ResponseBody
    public void updateDataType(Model model, String id, String name, String fieldList){
        DataType dataType = new DataType();
        dataType.setId(Integer.parseInt(id));
        dataType.setName(name);
        dataType.setFieldList(fieldList);

        int[] idList = {Integer.parseInt(id)};
        dataItemService.deleteDataItemBatchByDataType(idList);
        dataSourceService.deleteDataSourceBatchByDataType(idList);
        dataTypeService.updateDataType(dataType);
    }

    @RequestMapping("/deleteDataType")
    @ResponseBody
    public void deleteDataType(Model model, String id){
        int[] idList = {Integer.parseInt(id)};
        dataItemService.deleteDataItemBatchByDataType(idList);
        dataSourceService.deleteDataSourceBatchByDataType(idList);
        dataTypeService.deleteDataTypeById(Integer.parseInt(id));
    }

    @RequestMapping("/deleteDataTypeBatch")
    @ResponseBody
    public void deleteDataTypeBatch(Model model, String id){
        String[] list = id.split(",");
        int[] idList = new int[list.length];
        for (int i = 0; i < list.length; i++){
            idList[i] = Integer.parseInt(list[i]);
        }
        dataItemService.deleteDataItemBatchByDataType(idList);
        dataSourceService.deleteDataSourceBatchByDataType(idList);
        dataTypeService.deleteDataTypeBatch(idList);
    }

    // 数据源管理
    @RequestMapping("/addDataSource")
    @ResponseBody
    public String addDataSource(Model model, String name, String dataTypeId, String fieldList){
        DataSource dataSource = dataSourceService.queryDataSourceByName(name);
        if (dataSource != null){
            return "no";
        }

        dataSource = new DataSource();
        dataSource.setName(name);
        dataSource.setDataTypeId(Integer.parseInt(dataTypeId));
        dataSource.setFieldList(fieldList);
        dataSourceService.addDataSource(dataSource);

        return "" + dataSourceService.queryDataSourceByName(name).getId();
    }

    @RequestMapping("/updateDataSource")
    @ResponseBody
    public void updateDataSource(Model model, String id, String name, String dataTypeId, String fieldList){
        DataSource dataSource = new DataSource();
        dataSource.setId(Integer.parseInt(id));
        dataSource.setName(name);
        dataSource.setDataTypeId(Integer.parseInt(dataTypeId));
        dataSource.setFieldList(fieldList);

        int[] idList = {Integer.parseInt(id)};
        dataItemService.deleteDataItemBatchByDataSource(idList);
        dataSourceService.updateDataSource(dataSource);
    }

    @RequestMapping("/deleteDataSource")
    @ResponseBody
    public void deleteDataSource(Model model, String id){
        int[] idList = {Integer.parseInt(id)};
        dataItemService.deleteDataItemBatchByDataSource(idList);
        dataSourceService.deleteDataSourceById(Integer.parseInt(id));
    }

    @RequestMapping("/deleteDataSourceBatch")
    @ResponseBody
    public void deleteDataSourceBatch(Model model, String id){
        String[] list = id.split(",");
        int[] idList = new int[list.length];
        for (int i = 0; i < list.length; i++){
            idList[i] = Integer.parseInt(list[i]);
        }
        dataItemService.deleteDataItemBatchByDataSource(idList);
        dataSourceService.deleteDataSourceBatch(idList);
    }

    // 数据项管理
    @RequestMapping("/addDataItem")
    @ResponseBody
    public String addDataItem(Model model, String name, String dataSourceId, String fieldList, String module){
        DataItem dataItem = dataItemService.queryDataItemByName(name);
        if (dataItem != null){
            return "no";
        }

        dataItem = new DataItem();
        dataItem.setName(name);
        dataItem.setDataSourceId(Integer.parseInt(dataSourceId));
        dataItem.setFieldList(fieldList);
        dataItem.setModule(module);
        dataItemService.addDataItem(dataItem);
        return "" + dataItemService.queryDataItemByName(name).getId();
    }

    @RequestMapping("/updateDataItem")
    @ResponseBody
    public void updateDataItem(Model model, String id, String name, String dataSourceId, String fieldList, String module){
        DataItem dataItem = new DataItem();
        dataItem.setId(Integer.parseInt(id));
        dataItem.setName(name);
        dataItem.setDataSourceId(Integer.parseInt(dataSourceId));
        dataItem.setFieldList(fieldList);
        dataItem.setModule(module);
        dataItemService.updateDataItem(dataItem);
    }

    @RequestMapping("/deleteDataItem")
    @ResponseBody
    public void deleteDataItem(Model model, String id){
        dataItemService.deleteDataItemById(Integer.parseInt(id));
    }

    @RequestMapping("/deleteDataItemBatch")
    @ResponseBody
    public void deleteDataItemBatch(Model model, String id){
        String[] list = id.split(",");
        int[] idList = new int[list.length];
        for (int i = 0; i < list.length; i++){
            idList[i] = Integer.parseInt(list[i]);
        }
        dataItemService.deleteDataItemBatch(idList);
    }

    // 定时爬取设定
    @RequestMapping("/setSpider")
    @ResponseBody
    public void setSpider(Model model, String dateItemName, String typeName, String time){
        Map<String, String> map = new HashMap<String, String>();
        map.put("dateItemName", dateItemName);
        map.put("typeName", typeName);
        map.put("time", time);
        String data = JSONObject.fromObject(map).toString();
        System.out.println(data);

        TxtFileOperator.writeToTxtFile(data);

        setTimer();
    }

    private void setTimer(){
        JSONObject object = JSONObject.fromObject(TxtFileOperator.readFromFile());
        String dateItemName = (String) object.get("dateItemName");
        int dataSourceId = dataItemService.queryDataItemByName(dateItemName).getDataSourceId();
        final String dataSourceName = dataSourceService.queryDataSourceById(dataSourceId).getName();

        String typeName = (String) object.get("typeName");
        String time = (String) object.get("time");

        timer.cancel();
        timer = new Timer();
        if (typeName.equals("频率")){
            int millisecond = (int) (Double.parseDouble(time) * 3600 * 1000);
            timer.schedule(new TimerTask() {
                @Override
                public void run() {
                    runSpider(dataSourceName);
                }
            }, 1000, millisecond);
        }else if (typeName.equals("时间")){
            Calendar c = Calendar.getInstance();
            int currHour = c.get(Calendar.HOUR_OF_DAY);
            int currMinute = c.get(Calendar.MINUTE);
            System.out.println("当前时间: " + currHour + ":" + currMinute);

            String[] timeTmp = time.split(" ");
            String[] timeList = timeTmp[0].split(":");
            int hour = Integer.parseInt(timeList[0]);
            int minute = Integer.parseInt(timeList[1]);
            if (timeTmp[1].equals("PM")){
                hour += 12;
            }

            int millisecond = ((hour - currHour) * 3600 + (minute - currMinute) * 60) * 1000;
            if (millisecond < 0){
                millisecond += 24 * 3600 * 1000;
            }

            System.out.println(millisecond);
            timer.schedule(new TimerTask() {
                @Override
                public void run() {
                    runSpider(dataSourceName);
                }
            }, millisecond);

            timer.schedule(new TimerTask() {
                @Override
                public void run() {
                    runSpider(dataSourceName);
                }
            }, millisecond + 24 * 3600 * 1000,  24 * 3600 * 1000);
        }
    }

    private void runSpider(String dataSourceName){
        // 执行调用爬虫代码
        System.out.println("执行调用爬虫代码" + dataSourceName);
//        SpiderInterface spider = new Spider();
//        if (dataSourceName.equals("携程")){
//            spider.tuniuSpider(0,5);
//        }else if (dataSourceName.equals("途牛")){
//            spider.ctripSpider(0,5);
//        }else if (dataSourceName.equals("苏宁")){
//            spider.suningSpider(0,5);
//        }else if (dataSourceName.equals("variFlight")){
//            spider.variflightSpider(0,5);
//        }

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
