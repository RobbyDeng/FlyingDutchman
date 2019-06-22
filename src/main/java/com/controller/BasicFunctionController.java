package com.controller;

import com.pojo.BrowseRecord;
import com.pojo.Privilege;
import com.pojo.User;
import com.service.BrowseRecordService;
import com.service.PrivilegeService;
import com.service.RolePrivilegeService;
import com.service.UserService;
import com.utils.Email;
import com.utils.JavaSHA;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by dell on 2019/3/14.
 */
@Controller
@RequestMapping("/basicFunction")
public class BasicFunctionController {
    @Autowired
    private UserService userService;
    @Autowired
    private BrowseRecordService browseRecordService;
    @Autowired
    private PrivilegeService privilegeService;
    @Autowired
    private RolePrivilegeService rolePrivilegeService;

    // 页面跳转部分
    @RequestMapping("/toLogin")
    public String toLogin(Model model){
        return "login";
    }

    @RequestMapping("/toRegister")
    public String toSignUp(Model model){
        return  "register";
    }

    @RequestMapping("/toChangePassword")
    public String toChangePassword(Model model, String username, String hashCode){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        String date = df.format(new Date());
        String check = JavaSHA.bouncyCastleSHA256(date + " " + username);
        System.out.println("检查：" + check);
        System.out.println("原哈希码：" + hashCode);
        if (check.equals(hashCode)){
            model.addAttribute("username", username);
            model.addAttribute("hashCode", hashCode);

            return "password_change";
        }

        return "404";
    }

    @RequestMapping("/toLockScreen")
    public String toLockScreen(Model model, String username){
        model.addAttribute("username", username);
        return "lock-screen";
    }

    @RequestMapping("/toHomePage")
    public String toHomePage(Model model, String username){
        int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
        model.addAttribute("numberOfVisits", numberOfVisits);
        model.addAttribute("username", username);

        User user = userService.queryUserByName(username);
        // 传输用户权限
        HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
        model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

        return "home_page";
    }

    // 功能执行部分
    // 登录注册功能
    @RequestMapping("/login")
    public String login(Model model, String username, String password){
        User user = userService.queryUserByName(username);
        if (user != null){
            if (user.getPassword().equals(password)){
                // 传输浏览记录
                int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
                model.addAttribute("numberOfVisits", numberOfVisits);

                // 在数据库中添加一条浏览数据
                Date day = new Date();
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                BrowseRecord browseRecord = new BrowseRecord();
                browseRecord.setUserId(user.getId());
                browseRecord.setTime(df.format(day));
                browseRecordService.addBrowseRecord(browseRecord);

                // 传输用户名
                model.addAttribute("username", username);

                // 传输用户权限
                HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
                model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());

                return "home_page";
            }else{
                model.addAttribute("passwordError", "密码错误");
                return "login";
            }
        }else{
            model.addAttribute("usernameError", "用户不存在");
            return "login";
        }
    }

    @RequestMapping("/register")
    public String register(Model model, String username, String email, String password){
        System.out.println("Username: " + username + " Email: " + email + " Password: " + password);
        // 检测用户名是否已存在
        User check = userService.queryUserByName(username);
        System.out.println("查询到的用户: " + check);
        if (check != null){
            model.addAttribute("userExistError", "用户名已存在");
            return "login";
        }

        Date day = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        User user = new User();
        user.setName(username);
        user.setPassword(password);
        user.setRoleId(21);
        user.setEmail(email);
        user.setRegisterTime(df.format(day));
        userService.addUser(user);

        return "login";
    }

    @RequestMapping("/loginBack")
    public String loginBack(Model model, String username, String password){
        User user = userService.queryUserByName(username);
        if (user.getPassword().equals(password)){
            int numberOfVisits = browseRecordService.getNumberOfBrowseRecord();
            model.addAttribute("numberOfVisits", numberOfVisits);

            HashMap<String, HashMap<String, Privilege>> privilegeMap = getUserPrivilege(user.getRoleId());
            model.addAttribute("userPrivilegeList", JSONObject.fromObject(privilegeMap).toString());
            return "home_page";
        }else{
            model.addAttribute("username", username);
            model.addAttribute("passwordError", "密码错误");
            return "lock-screen";
        }
    }

    // 密码找回功能
    @RequestMapping("/changePassword")
    public String changePassword(Model model, String username, String password){
        User user = userService.queryUserByName(username);
        user.setPassword(password);
        userService.updateUser(user);

        return "login";
    }

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
