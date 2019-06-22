package com.controller;

import com.pojo.Privilege;
import com.pojo.User;
import com.service.*;
import com.utils.Email;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

/**
 * Created by dell on 2018/7/25.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private BrowseRecordService browseRecordService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private PrivilegeService privilegeService;
    @Autowired
    private RolePrivilegeService rolePrivilegeService;

    // 大数据管理
    @Autowired
    private DataTypeService dataTypeService;
    @Autowired
    private DataSourceService dataSourceService;
    @Autowired
    private DataItemService dataItemService;

//    @RequestMapping("/toLogin")
//    public String toLogin(Model model){
//        return "login";
//    }
//
//    @RequestMapping("/toRegister")
//    public String toSignUp(Model model){
//        return  "register";
//    }
//
//    @RequestMapping("/toLockScreen")
//    public String toLockScreen(Model model, String username){
//        model.addAttribute("username", username);
//        return "lock-screen";
//    }
//
//    @RequestMapping("/toHomePage")
//    public String toHomePage(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        return "home_page";
//    }

//    @RequestMapping("/toFlightQuery")
//    public String toFlightQuery(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "flight_query";
//    }
//
//    @RequestMapping("/toLineQuery")
//    public String toLineQuery(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "line_query";
//    }
//
//    @RequestMapping("/toPriceQuery")
//    public String toPriceQuery(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "price_query";
//    }
//
//    @RequestMapping("/toWeatherQuery")
//    public String toWeatherQuery(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "weather_query";
//    }

//    @RequestMapping("/toAirportLocation")
//    public String toAirportLocation(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "airport_location";
//    }
//
//    @RequestMapping("/toAirportProvince")
//    public String toAirportProvince(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "airport_province";
//    }
//
//    @RequestMapping("/toAirline")
//    public String toAirline(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "airline";
//    }
//
//    @RequestMapping("/toPlaneType")
//    public String toPlaneType(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//        return "plane_type";
//    }
//
//    @RequestMapping("/toProfile")
//    public String toProfile(Model model, String username){
//        User user = userService.queryUserByName(username);
//        model.addAttribute("username", user.getName());
//        model.addAttribute("email", user.getEmail());
//        model.addAttribute("sex", user.getSex());
//        model.addAttribute("birthday", user.getBirthday());
//        model.addAttribute("identity", user.getIdentity());
//        model.addAttribute("city", user.getCity());
//        model.addAttribute("registerTime", user.getRegisterTime());
//
//        List<BrowseRecord> list = browseRecordService.queryBrowseRecordById(user.getId());
//        if (list.size() < 2){
//            model.addAttribute("lastLogin", "第一次登录呢");
//        }else{
//            model.addAttribute("lastLogin", list.get(1).getTime());
//        }
//
//        int accumulativeAccess = browseRecordService.getNumberOfBrowseRecordById(user.getId());
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("accumulativeAccess", accumulativeAccess);
//        model.addAttribute("numberOfVisits", numberOfVisits);
//
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        return "profile";
//    }
//
//    @RequestMapping("/toProfileEdit")
//    public String toProfileEdit(Model model, String username){
//        System.out.println("个人信息编辑");
//        User user = userService.queryUserByName(username);
//        model.addAttribute("username", user.getName());
//        model.addAttribute("email", user.getEmail());
//        model.addAttribute("sex", user.getSex());
//        model.addAttribute("birthday", user.getBirthday());
//        model.addAttribute("identity", user.getIdentity());
//        model.addAttribute("city", user.getCity());
//        model.addAttribute("password", user.getPassword());
//
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        return "profile_edit";
//    }
//
    // 系统管理部分
//    @RequestMapping("/toUserManager")
//    public String toUserManager(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//        List<Role> roleList = roleService.queryAllRole();
//        Map<String, Role> roleMap = new HashMap<String, Role>();
//        for (int i = 0; i < roleList.size(); i++){
//            Role role = roleList.get(i);
//            roleMap.put("" + role.getId(), role);
//        }
//        model.addAttribute("roleList", roleList);
//
//        // 传输用户列表
//        List<User> userList = userService.queryAllUser();
//        HashMap<String, HashMap<String, String>> userMap = new HashMap<String, HashMap<String, String>>();
//        for (int i = 0; i < userList.size(); i++){
//            User user = userList.get(i);
//            HashMap<String, String> map = new HashMap<String, String>();
//            map.put("name", user.getName());
//            map.put("password", user.getPassword());
//            map.put("email", user.getEmail());
//            map.put("roleName", roleMap.get("" + user.getRoleId()).getName());
//
//            userMap.put("" + user.getId(), map);
//        }
//
//        model.addAttribute("userList", JSONObject.fromObject(userMap).toString());
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        return "admin_user_manage";
//    }
//
//    @RequestMapping("/toPrivilege")
//    public String toPrivilege(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        // 传输根权限
//        List<Privilege> rootList = privilegeService.queryPrivilegeByParent("0");
//        Map<String, Privilege> rootMap = new HashMap<String, Privilege>();
//        for (int i = 0; i < rootList.size(); i++){
//            Privilege privilege = rootList.get(i);
//            rootMap.put(privilege.getId(), privilege);
//        }
//
//        model.addAttribute("rootList", rootList);
//        // 传输权限
//        List<Privilege> privilegeList = privilegeService.queryAllPrivilege();
//        HashMap<String, HashMap<String, String>> privilegeMap = new HashMap<String, HashMap<String, String>>();
//        for (int i = 0; i < privilegeList.size(); i++){
//            Privilege privilege = privilegeList.get(i);
//            HashMap<String, String> map = new HashMap<String, String>();
//            map.put("name", privilege.getName());
//            map.put("parentPrivilegeId", privilege.getParentPrivilege());
//            String parentPrivilegeId = privilege.getParentPrivilege();
//            if (parentPrivilegeId.equals("0")){
//                map.put("parentPrivilegeName", "root");
//            }else{
//                map.put("parentPrivilegeName", rootMap.get(parentPrivilegeId).getName());
//            }
//
//            map.put("url", privilege.getUrl());
//
//            privilegeMap.put(privilege.getId(), map);
//        }
//        model.addAttribute("privilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        // 传输用户权限
//        User user = userService.queryUserByName(username);
//        HashMap<String, HashMap<String, Privilege>> userPrivilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(userPrivilegeMap).toString());
//
//        return "admin_privilege";
//    }
//
//    @RequestMapping("/toRole")
//    public String toRole(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        List<Role> roleList = roleService.queryAllRole();
//        HashMap<String, HashMap<String, List<String>>> roleMap = new HashMap<String, HashMap<String, List<String>>>();
//        HashMap<String, List<String>> nameMap = new HashMap<String, List<String>>();
//        for (int i = 0; i < roleList.size(); i++){
//            Role role = roleList.get(i);
//            List<String> list = rolePrivilegeService.queryRolePrivilegeByRoleId(role.getId());
//            HashMap<String, List<String>> privilegeMap = new HashMap<String, List<String>>();
//            for (int j = 0; j < list.size(); j++){
//                String key = list.get(j).substring(0, 2);
//                if (privilegeMap.get(key) == null){
//                    List<String> strings = new ArrayList<String>();
//                    strings.add(list.get(j));
//                    privilegeMap.put(key, strings);
//                }else{
//                    List<String> strings = privilegeMap.get(key);
//                    strings.add(list.get(j));
//                    privilegeMap.put(key, strings);
//                }
//            }
//            // 将名字添加进nameMap
//            List<String> nameList = new ArrayList<String>();
//            nameList.add(role.getName());
//            nameMap.put("" + role.getId(), nameList);
//
//            roleMap.put("" + role.getId(), privilegeMap);
//        }
//        roleMap.put("name", nameMap);
//        System.out.print(JSONObject.fromObject(roleMap).toString());
//        model.addAttribute("roleJson", JSONObject.fromObject(roleMap).toString());
//
//        JSONObject json = JSONObject.fromObject(getPrivilegeList());
//        model.addAttribute("privilegeJson", json.toString());
//
//        User user = userService.queryUserByName(username);
//        // 传输用户权限
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        return "admin_role";
//    }

    // 大数据管理部分
//    @RequestMapping("/toDataType")
//    public String toDataType(Model model, String username){
//        // 传输用户名和浏览总人数
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        // 传输用户权限
//        User user = userService.queryUserByName(username);
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        // 传输数据类型列表
////        List<DataType> list = dataTypeService.getAllDataType();
////        model.addAttribute("dataTypeList", list);
//        List<DataType> dataTypeList = dataTypeService.getAllDataType();
//        Map<String, DataType> dataTypeMap = new HashMap<String, DataType>();
//        for (int i = 0; i < dataTypeList.size(); i++){
//            DataType dataType = dataTypeList.get(i);
//            dataTypeMap.put("" + dataType.getId(), dataType);
//        }
//        model.addAttribute("dataTypeList", JSONObject.fromObject(dataTypeMap).toString());
//
//        return "data_type";
//    }
//
//    @RequestMapping("/toDataOrigin")
//    public String toDataOrigin(Model model, String username){
//        // 传输用户名和浏览总人数
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        // 传输用户权限
//        User user = userService.queryUserByName(username);
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        // 传输数据类型
//        List<DataType> dataTypeList = dataTypeService.getAllDataType();
//        Map<String, DataType> dataTypeMap = new HashMap<String, DataType>();
//        for (int i = 0; i < dataTypeList.size(); i++){
//            DataType dataType = dataTypeList.get(i);
//            dataTypeMap.put("" + dataType.getId(), dataType);
//        }
//
//        model.addAttribute("dataTypeList", JSONObject.fromObject(dataTypeMap).toString());
//
//        // 传输数据源
//        List<DataSource> dataSourceList = dataSourceService.getAllDataSource();
//        HashMap<String, HashMap<String, String>> dataSourceMap = new HashMap<String, HashMap<String, String>>();
//        for (int i = 0; i < dataSourceList.size(); i++){
//            DataSource dataSource = dataSourceList.get(i);
//            HashMap<String, String> map = new HashMap<String, String>();
//            map.put("name", dataSource.getName());
//            map.put("dataTypeId", "" + dataSource.getDataTypeId());
//            map.put("dataTypeName", dataTypeMap.get("" + dataSource.getDataTypeId()).getName());
//            map.put("fieldList", dataSource.getFieldList());
//
//            dataSourceMap.put("" + dataSource.getId(), map);
//        }
//        model.addAttribute("dataSourceList", JSONObject.fromObject(dataSourceMap).toString());
//
//        return "data_origin";
//    }
//
//    @RequestMapping("/toDataItem")
//    public String toDataItem(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        // 传输用户权限
//        User user = userService.queryUserByName(username);
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        // 传输数据源
//        List<DataType>  dataTypeList = dataTypeService.getAllDataType();
//        Map<String, DataType> dataTypeMap = new HashMap<String, DataType>();
//        for (int i = 0; i < dataTypeList.size(); i++){
//            DataType dataType = dataTypeList.get(i);
//            dataTypeMap.put("" + dataType.getId(), dataType);
//        }
//
//        model.addAttribute("dataTypeList", JSONObject.fromObject(dataTypeMap).toString());
//
//        // 传输数据源
//        List<DataSource> dataSourceList = dataSourceService.getAllDataSource();
//        HashMap<String, HashMap<String, String>> dataSourceMap = new HashMap<String, HashMap<String, String>>();
//        for (int i = 0; i < dataSourceList.size(); i++){
//            DataSource dataSource = dataSourceList.get(i);
//            HashMap<String, String> map = new HashMap<String, String>();
//            map.put("name", dataSource.getName());
//            map.put("dataTypeId", "" + dataSource.getDataTypeId());
//            map.put("dataTypeName", dataTypeMap.get("" + dataSource.getDataTypeId()).getName());
//            map.put("fieldList", dataSource.getFieldList());
//
//            dataSourceMap.put("" + dataSource.getId(), map);
//        }
//        model.addAttribute("dataSourceList", JSONObject.fromObject(dataSourceMap).toString());
//
//
//        // 传输数据项
//        List<DataItem> dataItemList = dataItemService.getAllDataItem();
//        HashMap<String, HashMap<String, String>> dataItemMap = new HashMap<String, HashMap<String, String>>();
//        for (int i = 0; i < dataItemList.size(); i++){
//            DataItem dataItem = dataItemList.get(i);
//            HashMap<String, String> map = new HashMap<String, String>();
//            map.put("name", dataItem.getName());
//            map.put("dataSourceId", "" + dataItem.getDataSourceId());
//            map.put("dataSourceName", dataSourceMap.get("" + dataItem.getDataSourceId()).get("name"));
//            map.put("module", dataItem.getModule());
//            map.put("fieldList", dataItem.getFieldList());
//
//            dataItemMap.put("" + dataItem.getId(), map);
//        }
//        model.addAttribute("dataItemList", JSONObject.fromObject(dataItemMap).toString());
//
//        return "data_item";
//    }
//
//    @RequestMapping("/toDataSetClock")
//    public String toDataSetClock(Model model, String username){
//        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//        model.addAttribute("numberOfVisits", numberOfVisits);
//        model.addAttribute("username", username);
//
//        // 传输用户权限
//        User user = userService.queryUserByName(username);
//        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//        // 传输数据项
//        List<DataItem> dataItemList = dataItemService.getAllDataItem();
//        HashMap<String, String> dataItemMap = new HashMap<String, String>();
//        for (int i = 0; i < dataItemList.size(); i++){
//            DataItem dataItem = dataItemList.get(i);
//            dataItemMap.put("" + dataItem.getId(), dataItem.getName());
//        }
//        model.addAttribute("dataItemList", JSONObject.fromObject(dataItemMap).toString());
//
//        return "data_set_clock";
//    }
//
//    // 数据类型
//    @RequestMapping("/addDataType")
//    @ResponseBody
//    public String addDataType(Model model, String name, String fieldList){
//        DataType dataType = dataTypeService.queryDataTypeByName(name);
//        if (dataType != null){
//            return "No";
//        }
//
//        dataType = new DataType();
//        dataType.setName(name);
//        dataType.setFieldList(fieldList);
//        dataTypeService.addDataType(dataType);
//
//        return "" + dataTypeService.queryDataTypeByName(name).getId();
//    }
//
//    @RequestMapping("/deleteDataType")
//    @ResponseBody
//    public void deleteDataType(Model model, String id){
//        int[] idList = {Integer.parseInt(id)};
//        dataItemService.deleteDataItemBatchByDataType(idList);
//        dataSourceService.deleteDataSourceBatchByDataType(idList);
//        dataTypeService.deleteDataTypeById(Integer.parseInt(id));
//    }
//
//    @RequestMapping("/deleteDataTypeBatch")
//    @ResponseBody
//    public void deleteDataTypeBatch(Model model, String id){
//        String[] list = id.split(",");
//        int[] idList = new int[list.length];
//        for (int i = 0; i < list.length; i++){
//            idList[i] = Integer.parseInt(list[i]);
//        }
//        dataItemService.deleteDataItemBatchByDataType(idList);
//        dataSourceService.deleteDataSourceBatchByDataType(idList);
//        dataTypeService.deleteDataTypeBatch(idList);
//    }
//
//    @RequestMapping("/updateDataType")
//    @ResponseBody
//    public void updateDataType(Model model, String id, String name, String fieldList){
//        DataType dataType = new DataType();
//        dataType.setId(Integer.parseInt(id));
//        dataType.setName(name);
//        dataType.setFieldList(fieldList);
//        dataTypeService.updateDataType(dataType);
//    }
//    // 数据类型
//
//    // 数据源
//    @RequestMapping("/addDataSource")
//    @ResponseBody
//    public String addDataSource(Model model, String name, String dataTypeId, String fieldList){
//        DataSource dataSource = dataSourceService.queryDataSourceByName(name);
//        if (dataSource != null){
//            return "no";
//        }
//
//        dataSource = new DataSource();
//        dataSource.setName(name);
//        dataSource.setDataTypeId(Integer.parseInt(dataTypeId));
//        dataSource.setFieldList(fieldList);
//        dataSourceService.addDataSource(dataSource);
//
//        return "" + dataSourceService.queryDataSourceByName(name).getId();
//    }
//
//    @RequestMapping("/deleteDataSource")
//    @ResponseBody
//    public void deleteDataSource(Model model, String id){
//        int[] idList = {Integer.parseInt(id)};
//        dataItemService.deleteDataItemBatchByDataSource(idList);
//        dataSourceService.deleteDataSourceById(Integer.parseInt(id));
//    }
//
//    @RequestMapping("/deleteDataSourceBatch")
//    @ResponseBody
//    public void deleteDataSourceBatch(Model model, String id){
//        String[] list = id.split(",");
//        int[] idList = new int[list.length];
//        for (int i = 0; i < list.length; i++){
//            idList[i] = Integer.parseInt(list[i]);
//        }
//        dataItemService.deleteDataItemBatchByDataSource(idList);
//        dataSourceService.deleteDataSourceBatch(idList);
//    }
//
//    @RequestMapping("/updateDataSource")
//    @ResponseBody
//    public void updateDataSource(Model model, String id, String name, String dataTypeId, String fieldList){
//        DataSource dataSource = new DataSource();
//        dataSource.setId(Integer.parseInt(id));
//        dataSource.setName(name);
//        dataSource.setDataTypeId(Integer.parseInt(dataTypeId));
//        dataSource.setFieldList(fieldList);
//        dataSourceService.updateDataSource(dataSource);
//    }
//    // 数据源
//
//    // 数据项
//    @RequestMapping("/addDataItem")
//    @ResponseBody
//    public String addDataItem(Model model, String name, String dataSourceId, String fieldList, String module){
//        DataItem dataItem = dataItemService.queryDataItemByName(name);
//        if (dataItem != null){
//            return "no";
//        }
//
//        dataItem = new DataItem();
//        dataItem.setName(name);
//        dataItem.setDataSourceId(Integer.parseInt(dataSourceId));
//        dataItem.setFieldList(fieldList);
//        dataItem.setModule(module);
//        dataItemService.addDataItem(dataItem);
//        return "" + dataItemService.queryDataItemByName(name).getId();
//    }
//
//    @RequestMapping("/deleteDataItem")
//    @ResponseBody
//    public void deleteDataItem(Model model, String id){
//        dataItemService.deleteDataItemById(Integer.parseInt(id));
//    }
//
//    @RequestMapping("/updateDataItem")
//    @ResponseBody
//    public void updateDataItem(Model model, String id, String name, String dataSourceId, String fieldList, String module){
//        DataItem dataItem = new DataItem();
//        dataItem.setId(Integer.parseInt(id));
//        dataItem.setName(name);
//        dataItem.setDataSourceId(Integer.parseInt(dataSourceId));
//        dataItem.setFieldList(fieldList);
//        dataItem.setModule(module);
//        dataItemService.updateDataItem(dataItem);
//    }
//
//    @RequestMapping("/deleteDataItemBatch")
//    @ResponseBody
//    public void deleteDataItemBatch(Model model, String id){
//        String[] list = id.split(",");
//        int[] idList = new int[list.length];
//        for (int i = 0; i < list.length; i++){
//            idList[i] = Integer.parseInt(list[i]);
//        }
//        dataItemService.deleteDataItemBatch(idList);
//    }
    // 数据项

//    // 密码找回功能
//    @RequestMapping("/toChangePassword")
//    public String toChangePassword(Model model, String username, String hashCode){
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
//        String date = df.format(new Date());
//        String check = JavaSHA.bouncyCastleSHA256(date + " " + username);
//        System.out.println("检查：" + check);
//        System.out.println("原哈希码：" + hashCode);
//        if (check.equals(hashCode)){
//            model.addAttribute("username", username);
//            model.addAttribute("hashCode", hashCode);
//
//            return "password_change";
//        }
//
//        return "404";
//    }
//
//    @RequestMapping("/changePassword")
//    public String changePassword(Model model, String username, String password){
//        User user = userService.queryUserByName(username);
//        user.setPassword(password);
//        userService.updateUser(user);
//
//        return "login";
//    }

//    // 登录注册功能
//    @RequestMapping("/login")
//    public String login(Model model, String username, String password){
//        User user = userService.queryUserByName(username);
//        if (user != null){
//            if (user.getPassword().equals(password)){
//                // 传输浏览记录
//                int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//                model.addAttribute("numberOfVisits", numberOfVisits);
//
//                // 在数据库中添加一条浏览数据
//                Date day = new Date();
//                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                BrowseRecord browseRecord = new BrowseRecord();
//                browseRecord.setUserId(user.getId());
//                browseRecord.setTime(df.format(day));
//                browseRecordService.addBrowseRecord(browseRecord);
//
//                // 传输用户名
//                model.addAttribute("username", username);
//
//                // 传输用户权限
//                HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//                model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//
//                return "home_page";
//            }else{
//                model.addAttribute("passwordError", "密码错误");
//                return "login";
//            }
//        }else{
//            model.addAttribute("usernameError", "用户不存在");
//            return "login";
//        }
//    }
//
//    @RequestMapping("/register")
//    public String register(Model model, String username, String email, String password){
//        System.out.println("Username: " + username + " Email: " + email + " Password: " + password);
//        // 检测用户名是否已存在
//        User check = userService.queryUserByName(username);
//        System.out.println("查询到的用户: " + check);
//        if (check != null){
//            model.addAttribute("userExistError", "用户名已存在");
//            return "login";
//        }
//
//        Date day = new Date();
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//
//        User user = new User();
//        user.setName(username);
//        user.setPassword(password);
//        user.setRoleId(7);
//        user.setEmail(email);
//        user.setRegisterTime(df.format(day));
//        userService.addUser(user);
//
//        return "login";
//    }
//
//    @RequestMapping("/loginBack")
//    public String loginBack(Model model, String username, String password){
//        User user = userService.queryUserByName(username);
//        if (user.getPassword().equals(password)){
//            int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
//            model.addAttribute("numberOfVisits", numberOfVisits);
//
//            HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
//            model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
//            return "home_page";
//        }else{
//            model.addAttribute("username", username);
//            model.addAttribute("passwordError", "密码错误");
//            return "lock-screen";
//        }
//    }
//
//    @RequestMapping("/changeProfile")
//    @ResponseBody
//    public String changeProfile(Model model, String username, String email, String gender, String birthday, String identity, String city, String password){
//        User user = new User();
//        user.setName(username);
//        user.setEmail(email);
//        user.setSex(gender);
//        user.setBirthday(birthday);
//        user.setIdentity(identity);
//        user.setCity(city);
//        user.setPassword(password);
//        user.setCity(city);
//        userService.updateUser(user);
//
//        return "Change Complete";
//    }

//    @RequestMapping("/deleteUser")
//    @ResponseBody
//    public String deleteUser(Model model, String userId){
//        System.out.println("删除用户 " + userId);
//        // 删除用户
//        userService.deleteUser(Integer.parseInt(userId));
//        // 删除相关的浏览记录
//        browseRecordService.deleteBrowseRecordById(Integer.parseInt(userId));
//
//        return userId;
//    }
//
//    @RequestMapping("/addUser")
//    @ResponseBody
//    public String addUser(Model model, String username, String email, String password, String role){
//        // 检测用户名是否已存在
//        User check = userService.queryUserByName(username);
//        System.out.println("查询到的用户: " + check);
//        if (check != null){
//            return "No";
//        }
//
//        Date day = new Date();
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//
//        User user = new User();
//        user.setName(username);
//        user.setPassword(password);
//        user.setRoleId(Integer.parseInt(role));
//        user.setEmail(email);
//        user.setRegisterTime(df.format(day));
//        userService.addUser(user);
//
//        return "" + userService.queryUserByName(username).getId();
//    }
//
//    @RequestMapping("/updateUser")
//    @ResponseBody
//    public String updateUser(Model model, String username, String email, String password, String role){
//        System.out.println(username + " " + email + " " + password + " " + role);
//        User check = userService.queryUserByName(username);
//        System.out.println("查询到的用户: " + check);
//        if (check == null){
//            return "No";
//        }
//
//        User user = new User();
//        user.setName(username);
//        user.setPassword(password);
//        user.setRoleId(Integer.parseInt(role));
//        user.setEmail(email);
//        userService.updateUser(user);
//
//        return "Yes";
//    }
//
//    @RequestMapping("/deleteUserBatch")
//    @ResponseBody
//    public void deleteUserBatch(Model model, String id){
//        String[] list = id.split(",");
//        int[] idList = new int[list.length];
//        for (int i = 0; i < list.length; i++){
//            idList[i] = Integer.parseInt(list[i]);
//        }
//        userService.deleteUserBatch(idList);
//    }
//
//    @RequestMapping("/addRole")
//    @ResponseBody
//    public String addRole(Model model, String name, String privilege){
//        System.out.println(privilege);
//        Role check = roleService.queryRoleByName(name);
//        if (check != null){
//            return "No";
//        }
//
//        // 添加角色
//        Role role = new Role();
//        role.setName(name);
//        roleService.addRole(role);
//        role = roleService.queryRoleByName(name);
////        System.out.println(roleService.queryRoleByName(name));
//        // 添加角色对于的权限
//        JSONObject jsonObject = JSONObject.fromObject(privilege);
//        Iterator it = jsonObject.keys();
//
//        List<RolePrivilege> rolePrivilegeList = new ArrayList<RolePrivilege>();
//        while (it.hasNext()){
//            String key = (String) it.next();
//            List<String> list = (List<String>) jsonObject.get(key);
//            System.out.println(list);
//            System.out.println(role);
//            for (int i = 0; i < list.size(); i++){
//                RolePrivilege rolePrivilege = new RolePrivilege();
//                rolePrivilege.setRoleId(role.getId());
//                rolePrivilege.setPrivilegeId(list.get(i));
//                rolePrivilegeList.add(rolePrivilege);
//            }
//        }
//        rolePrivilegeService.addRolePrivilege(rolePrivilegeList);
//
//
//        return "" + role.getId();
//    }
//
//    @RequestMapping("/deleteRole")
//    @ResponseBody
//    public String deleteRole(Model model, String roleId){
//        System.out.println(roleId);
//        userService.deleteUserByRole(Integer.parseInt(roleId));
//        rolePrivilegeService.deleteRolePrivilegeByRoleId(Integer.parseInt(roleId));
//        roleService.deleteRole(Integer.parseInt(roleId));
//
//        return roleId;
//    }
//
//    @RequestMapping("/updateRole")
//    @ResponseBody
//    public String updateRole(Model model, String roleId, String privilege){
//        System.out.println("更新");
//        System.out.println(roleId);
//        System.out.println(privilege);
//
//        // 删除该角色与权限的关系
//        rolePrivilegeService.deleteRolePrivilegeByRoleId(Integer.parseInt(roleId));
//        // 添加该角色与权限的新关系
//        JSONObject jsonObject = JSONObject.fromObject(privilege);
//        Iterator it = jsonObject.keys();
//
//        List<RolePrivilege> rolePrivilegeList = new ArrayList<RolePrivilege>();
//        while (it.hasNext()){
//            String key = (String) it.next();
//            List<String> list = (List<String>) jsonObject.get(key);
//            for (int i = 0; i < list.size(); i++){
//                RolePrivilege rolePrivilege = new RolePrivilege();
//                rolePrivilege.setRoleId(Integer.parseInt(roleId));
//                rolePrivilege.setPrivilegeId(list.get(i));
//                rolePrivilegeList.add(rolePrivilege);
//            }
//        }
//        rolePrivilegeService.addRolePrivilege(rolePrivilegeList);
//
//        return "Yes";
//    }
//
//    @RequestMapping("/deleteRoleBatch")
//    @ResponseBody
//    public void deleteRoleBatch(Model model, String id){
//        String[] list = id.split(",");
//        int[] idList = new int[list.length];
//        for (int i = 0; i < list.length; i++){
//            idList[i] = Integer.parseInt(list[i]);
//        }
//
//        userService.deleteUserBatchByRole(idList);
//        rolePrivilegeService.deleteRolePrivilegeBatchByRole(idList);
//        roleService.deleteRoleBatch(idList);
//    }

    @RequestMapping("/forgetPassword")
    @ResponseBody
    public String forgetPassword(Model model, String username) throws Exception {
//        System.out.println("忘记密码: " + username);
        User user = userService.queryUserByName(username);
        if (user == null){
            return "No";
        }else{
            Email.SendEmailChangePassword(user.getEmail(), user.getName());
        }

        return "Yes";
    }

//    @RequestMapping("/addPrivilege")
//    @ResponseBody
//    public String addPrivilege(Model model, String name, String parentPrivilege, String url){
////        System.out.println("名字: " + name + ", 父权限: " + parentPrivilege + ", Url: " + url);
//
//        Privilege privilege = privilegeService.queryDisabledPrivilege();
//        if (privilege != null){
//            privilege.setName(name);
//            privilege.setParentPrivilege(parentPrivilege);
//            privilege.setUrl(url);
//            privilegeService.updatePrivilege(privilege);
//        }else{
//            String id = "";
//            if (parentPrivilege.equals("0")){
//                id += "0" + (privilegeService.queryPrivilegeByParent("0").size() + 1);
//            }else{
//                id += parentPrivilege + (privilegeService.queryPrivilegeByParent(parentPrivilege).size() + 1);
//            }
//
//            privilege = new Privilege();
//            privilege.setId(id);
//            privilege.setName(name);
//            privilege.setParentPrivilege(parentPrivilege);
//            privilege.setUrl(url);
//            privilegeService.addPrivilege(privilege);
//        }
//        return privilege.getId();
//    }
//
//    @RequestMapping("/updatePrivilege")
//    @ResponseBody
//    public String updatePrivilege(Model model, String id, String name, String parentPrivilege, String url){
//        System.out.println("名字: " + name + ", 父权限: " + parentPrivilege + ", Url: " + url);
//        Privilege check = privilegeService.queryPrivilegeByCode(id);
//        if (check == null){
//            return "No";
//        }
//
//        Privilege privilege = new Privilege();
//        privilege.setId(id);
//        privilege.setName(name);
//        privilege.setParentPrivilege(parentPrivilege);
//        privilege.setUrl(url);
//        privilegeService.updatePrivilege(privilege);
//
//        return "Yes";
//    }
//
//    @RequestMapping("/deletePrivilege")
//    @ResponseBody
//    public String deletePrivilege(Model model, String privilegeId){
////        System.out.println(privilegeId);
//        privilegeService.deletePrivilege(privilegeId);
//        // 对于权限被删除后的角色处理 —— 暂不处理
//        rolePrivilegeService.deleteRolePrivilegeByPrivilegeId(privilegeId);
//
//        return privilegeId;
//    }
//
//    @RequestMapping("/deletePrivilegeBatch")
//    @ResponseBody
//    public void deletePrivilegeBatch(Model model, String id){
//        String[] list = id.split(",");
//        List<String> idList = new ArrayList<String>();
//        for (int i = 0; i < list.length; i++){
//            idList.add(list[i]);
//        }
//        privilegeService.deletePrivilegeBatch(idList);
//    }
//
//    @RequestMapping("/setSpider")
//    @ResponseBody
//    public void setSpider(Model model, String dataItem, String type, String time){
//        Map<String, String> map = new HashMap<String, String>();
//        map.put("dataItem", dataItem);
//        map.put("type", type);
//        map.put("time", time);
//        String data = map.toString();
//
//        TxtFileOperator.writeToTxtFile(data);
//    }

//    @RequestMapping("/queryFlight")
//    @ResponseBody
//    public String queryFlight(Model model, String depart, String arrive, String date){
//        return "";
//    }
//
//    @RequestMapping("/queryPrice")
//    @ResponseBody
//    public String queryLine(Model model, String depart, String arrive, String date){
//        return "";
//    }
//
//    @RequestMapping("/queryLine")
//    @ResponseBody
//    public String queryLine(Model model, String flightCode){
//        return "";
//    }

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
