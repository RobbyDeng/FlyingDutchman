package com.controller;

import com.pojo.Privilege;
import com.pojo.Role;
import com.pojo.RolePrivilege;
import com.pojo.User;
import com.service.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by dell on 2019/3/11.
 */
@Controller
@RequestMapping("/systemManage")
public class SystemManageController {
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

    // 页面跳转部分
    @RequestMapping("/toUserManager")
    public String toUserManager(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);
        List<Role> roleList = roleService.queryAllRole();
        Map<String, Role> roleMap = new HashMap<String, Role>();
        for (int i = 0; i < roleList.size(); i++){
            Role role = roleList.get(i);
            roleMap.put("" + role.getId(), role);
        }
        model.addAttribute("roleList", roleList);

        // 传输用户列表
        List<User> userList = userService.queryAllUser();
        HashMap<String, HashMap<String, String>> userMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < userList.size(); i++){
            User user = userList.get(i);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("name", user.getName());
            map.put("password", user.getPassword());
            map.put("email", user.getEmail());
            map.put("roleName", roleMap.get("" + user.getRoleId()).getName());

            userMap.put("" + user.getId(), map);
        }

        model.addAttribute("userList", JSONObject.fromObject(userMap).toString());

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        return "admin_user_manage";
    }

    @RequestMapping("/toPrivilege")
    public String toPrivilege(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        // 传输根权限
        List<Privilege> rootList = privilegeService.queryPrivilegeByParent("0");
        Map<String, Privilege> rootMap = new HashMap<String, Privilege>();
        for (int i = 0; i < rootList.size(); i++){
            Privilege privilege = rootList.get(i);
            rootMap.put(privilege.getId(), privilege);
        }

        model.addAttribute("rootList", rootList);
        // 传输权限
        List<Privilege> privilegeList = privilegeService.queryAllPrivilege();
        HashMap<String, HashMap<String, String>> privilegeMap = new HashMap<String, HashMap<String, String>>();
        for (int i = 0; i < privilegeList.size(); i++){
            Privilege privilege = privilegeList.get(i);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("name", privilege.getName());
            map.put("parentPrivilegeId", privilege.getParentPrivilege());
            String parentPrivilegeId = privilege.getParentPrivilege();
            if (parentPrivilegeId.equals("0")){
                map.put("parentPrivilegeName", "root");
            }else{
                map.put("parentPrivilegeName", rootMap.get(parentPrivilegeId).getName());
            }

            map.put("url", privilege.getUrl());

            privilegeMap.put(privilege.getId(), map);
        }
        model.addAttribute("privilegeList", JSONObject.fromObject(privilegeMap).toString());

        // 传输用户权限
        User user = userService.queryUserByName(username);
        HashMap<String, HashMap<String, Privilege>> userPrivilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(userPrivilegeMap).toString());

        return "admin_privilege";
    }

    @RequestMapping("/toRole")
    public String toRole(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        List<Role> roleList = roleService.queryAllRole();
        HashMap<String, HashMap<String, List<String>>> roleMap = new HashMap<String, HashMap<String, List<String>>>();
        HashMap<String, List<String>> nameMap = new HashMap<String, List<String>>();
        for (int i = 0; i < roleList.size(); i++){
            Role role = roleList.get(i);
            List<String> list = rolePrivilegeService.queryRolePrivilegeByRoleId(role.getId());
            HashMap<String, List<String>> privilegeMap = new HashMap<String, List<String>>();
            for (int j = 0; j < list.size(); j++){
                String key = list.get(j).substring(0, 2);
                if (privilegeMap.get(key) == null){
                    List<String> strings = new ArrayList<String>();
                    strings.add(list.get(j));
                    privilegeMap.put(key, strings);
                }else{
                    List<String> strings = privilegeMap.get(key);
                    strings.add(list.get(j));
                    privilegeMap.put(key, strings);
                }
            }
            // 将名字添加进nameMap
            List<String> nameList = new ArrayList<String>();
            nameList.add(role.getName());
            nameMap.put("" + role.getId(), nameList);

            roleMap.put("" + role.getId(), privilegeMap);
        }
        roleMap.put("name", nameMap);
        System.out.print(JSONObject.fromObject(roleMap).toString());
        model.addAttribute("roleJson", JSONObject.fromObject(roleMap).toString());

        JSONObject json = JSONObject.fromObject(getPrivilegeList());
        model.addAttribute("privilegeJson", json.toString());

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        return "admin_role";
    }

    // 功能执行部分
    // 用户管理
    @RequestMapping("/addUser")
    @ResponseBody
    public String addUser(Model model, String username, String email, String password, String role){
        // 检测用户名是否已存在
        User check = userService.queryUserByName(username);
        System.out.println("查询到的用户: " + check);
        if (check != null){
            return "No";
        }

        Date day = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        User user = new User();
        user.setName(username);
        user.setPassword(password);
        user.setRoleId(Integer.parseInt(role));
        user.setEmail(email);
        user.setRegisterTime(df.format(day));
        userService.addUser(user);

        return "" + userService.queryUserByName(username).getId();
    }

    @RequestMapping("/updateUser")
    @ResponseBody
    public String updateUser(Model model, String username, String email, String password, String role){
        System.out.println(username + " " + email + " " + password + " " + role);
        User check = userService.queryUserByName(username);
        System.out.println("查询到的用户: " + check);
        if (check == null){
            return "No";
        }

        User user = new User();
        user.setName(username);
        user.setPassword(password);
        user.setRoleId(Integer.parseInt(role));
        user.setEmail(email);
        userService.updateUser(user);

        return "Yes";
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public String deleteUser(Model model, String userId){
        System.out.println("删除用户 " + userId);
        // 删除相关的浏览记录
        browseRecordService.deleteBrowseRecordById(Integer.parseInt(userId));
        // 删除用户
        userService.deleteUser(Integer.parseInt(userId));

        return userId;
    }

    @RequestMapping("/deleteUserBatch")
    @ResponseBody
    public void deleteUserBatch(Model model, String id){
        String[] list = id.split(",");
        int[] idList = new int[list.length];
        for (int i = 0; i < list.length; i++){
            idList[i] = Integer.parseInt(list[i]);
        }
        // 删除相关的浏览记录
        for (int i = 0; i < idList.length; i++){
            browseRecordService.deleteBrowseRecordById(idList[i]);
        }
        userService.deleteUserBatch(idList);
    }

    // 角色管理
    @RequestMapping("/addRole")
    @ResponseBody
    public String addRole(Model model, String name, String privilege){
        System.out.println(privilege);
        Role check = roleService.queryRoleByName(name);
        if (check != null){
            return "No";
        }

        // 添加角色
        Role role = new Role();
        role.setName(name);
        roleService.addRole(role);
        role = roleService.queryRoleByName(name);
//        System.out.println(roleService.queryRoleByName(name));
        // 添加角色对于的权限
        JSONObject jsonObject = JSONObject.fromObject(privilege);
        Iterator it = jsonObject.keys();

        List<RolePrivilege> rolePrivilegeList = new ArrayList<RolePrivilege>();
        while (it.hasNext()){
            String key = (String) it.next();
            List<String> list = (List<String>) jsonObject.get(key);
            System.out.println(list);
            System.out.println(role);
            for (int i = 0; i < list.size(); i++){
                RolePrivilege rolePrivilege = new RolePrivilege();
                rolePrivilege.setRoleId(role.getId());
                rolePrivilege.setPrivilegeId(list.get(i));
                rolePrivilegeList.add(rolePrivilege);
            }
        }
        rolePrivilegeService.addRolePrivilege(rolePrivilegeList);


        return "" + role.getId();
    }

    @RequestMapping("/updateRole")
    @ResponseBody
    public String updateRole(Model model, String roleId, String privilege){
        System.out.println("更新");
        System.out.println(roleId);
        System.out.println(privilege);

        // 删除该角色与权限的关系
        rolePrivilegeService.deleteRolePrivilegeByRoleId(Integer.parseInt(roleId));
        // 添加该角色与权限的新关系
        JSONObject jsonObject = JSONObject.fromObject(privilege);
        Iterator it = jsonObject.keys();

        List<RolePrivilege> rolePrivilegeList = new ArrayList<RolePrivilege>();
        while (it.hasNext()){
            String key = (String) it.next();
            List<String> list = (List<String>) jsonObject.get(key);
            for (int i = 0; i < list.size(); i++){
                RolePrivilege rolePrivilege = new RolePrivilege();
                rolePrivilege.setRoleId(Integer.parseInt(roleId));
                rolePrivilege.setPrivilegeId(list.get(i));
                rolePrivilegeList.add(rolePrivilege);
            }
        }
        rolePrivilegeService.addRolePrivilege(rolePrivilegeList);

        return "Yes";
    }

    @RequestMapping("/deleteRole")
    @ResponseBody
    public String deleteRole(Model model, String roleId){
        System.out.println(roleId);
        userService.deleteUserByRole(Integer.parseInt(roleId));
        rolePrivilegeService.deleteRolePrivilegeByRoleId(Integer.parseInt(roleId));
        roleService.deleteRole(Integer.parseInt(roleId));

        return roleId;
    }

    @RequestMapping("/deleteRoleBatch")
    @ResponseBody
    public void deleteRoleBatch(Model model, String id){
        String[] list = id.split(",");
        int[] idList = new int[list.length];
        for (int i = 0; i < list.length; i++){
            idList[i] = Integer.parseInt(list[i]);
        }

        userService.deleteUserBatchByRole(idList);
        rolePrivilegeService.deleteRolePrivilegeBatchByRole(idList);
        roleService.deleteRoleBatch(idList);
    }

    // 权限管理
    @RequestMapping("/addPrivilege")
    @ResponseBody
    public String addPrivilege(Model model, String name, String parentPrivilege, String url){
//        System.out.println("名字: " + name + ", 父权限: " + parentPrivilege + ", Url: " + url);

        Privilege privilege = privilegeService.queryDisabledPrivilege();
        if (privilege != null){
            privilege.setName(name);
            privilege.setParentPrivilege(parentPrivilege);
            privilege.setUrl(url);
            privilegeService.updatePrivilege(privilege);
        }else{
            String id = "";
            if (parentPrivilege.equals("0")){
                id += "0" + (privilegeService.queryPrivilegeByParent("0").size() + 1);
            }else{
                id += parentPrivilege + (privilegeService.queryPrivilegeByParent(parentPrivilege).size() + 1);
            }

            privilege = new Privilege();
            privilege.setId(id);
            privilege.setName(name);
            privilege.setParentPrivilege(parentPrivilege);
            privilege.setUrl(url);
            privilegeService.addPrivilege(privilege);
        }
        return privilege.getId();
    }

    @RequestMapping("/updatePrivilege")
    @ResponseBody
    public String updatePrivilege(Model model, String id, String name, String parentPrivilege, String url){
        System.out.println("名字: " + name + ", 父权限: " + parentPrivilege + ", Url: " + url);
        Privilege check = privilegeService.queryPrivilegeByCode(id);
        if (check == null){
            return "No";
        }

        Privilege privilege = new Privilege();
        privilege.setId(id);
        privilege.setName(name);
        privilege.setParentPrivilege(parentPrivilege);
        privilege.setUrl(url);
        privilegeService.updatePrivilege(privilege);

        return "Yes";
    }

    @RequestMapping("/deletePrivilege")
    @ResponseBody
    public String deletePrivilege(Model model, String privilegeId){
        privilegeService.deletePrivilege(privilegeId);
        rolePrivilegeService.deleteRolePrivilegeByPrivilegeId(privilegeId);

        return privilegeId;
    }

    @RequestMapping("/deletePrivilegeBatch")
    @ResponseBody
    public void deletePrivilegeBatch(Model model, String id){
        String[] list = id.split(",");
        List<String> idList = new ArrayList<String>();
        for (int i = 0; i < list.length; i++){
            idList.add(list[i]);
        }
        privilegeService.deletePrivilegeBatch(idList);
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
