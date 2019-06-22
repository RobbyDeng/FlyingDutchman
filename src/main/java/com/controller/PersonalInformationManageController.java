package com.controller;

import com.pojo.BrowseRecord;
import com.pojo.Privilege;
import com.pojo.User;
import com.service.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

/**
 * Created by dell on 2019/3/14.
 */
@Controller
@RequestMapping("/personalInformationManage")
public class PersonalInformationManageController {
    @Autowired
    private UserService userService;
    @Autowired
    private BrowseRecordService browseRecordService;
    @Autowired
    private PrivilegeService privilegeService;
    @Autowired
    private RolePrivilegeService rolePrivilegeService;

    @RequestMapping("/toProfile")
    public String toProfile(Model model, String username){
        User user = userService.queryUserByName(username);
        model.addAttribute("username", user.getName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("sex", user.getSex());
        model.addAttribute("birthday", user.getBirthday());
        model.addAttribute("identity", user.getIdentity());
        model.addAttribute("city", user.getCity());
        model.addAttribute("registerTime", user.getRegisterTime());

        List<BrowseRecord> list = browseRecordService.queryBrowseRecordById(user.getId());
        if (list.size() < 2){
            model.addAttribute("lastLogin", "第一次登录呢");
        }else{
            model.addAttribute("lastLogin", list.get(1).getTime());
        }

        int accumulativeAccess = browseRecordService.getNumberOfBrowseRecordById(user.getId());
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("accumulativeAccess", accumulativeAccess);
        model.addAttribute("numberOfVisits", numberOfVisits);

        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        return "profile";
    }

    @RequestMapping("/toProfileEdit")
    public String toProfileEdit(Model model, String username){
        System.out.println("个人信息编辑");
        User user = userService.queryUserByName(username);
        model.addAttribute("username", user.getName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("sex", user.getSex());
        model.addAttribute("birthday", user.getBirthday());
        model.addAttribute("identity", user.getIdentity());
        model.addAttribute("city", user.getCity());
        model.addAttribute("password", user.getPassword());

        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);

        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        return "profile_edit";
    }

    // 功能执行部分
    @RequestMapping("/changeProfile")
    @ResponseBody
    public String changeProfile(Model model, String username, String email, String gender, String birthday, String identity, String city, String password){
        User user = userService.queryUserByName(username);
        user.setName(username);
        user.setEmail(email);
        user.setSex(gender);
        user.setBirthday(birthday);
        user.setIdentity(identity);
        user.setCity(city);
        user.setPassword(password);
        user.setCity(city);
        userService.updateUser(user);

        return "Change Complete";
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
