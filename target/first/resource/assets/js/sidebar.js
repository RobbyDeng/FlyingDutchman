/**
 * Created by dell on 2019/3/4.
 */
var iconMap = {
    "系统管理": "icon-gear",
    "用户管理": "icon-user",
    "角色管理": "icon-user-group",
    "权限管理": "fontawesome-check",

    "数据管理":"icon-gear",
    "数据类型管理":"icon-document",
    "数据源管理":"entypo-publish",
    "数据项管理":"entypo-tools",
    "定时任务配置":"entypo-clock",

    "航班动态查询":"icon-search",
    "航班查询":"entypo-flight",
    "航线查询":"icon-direction",
    "票价查询":"fontawesome-money",
    "机场天气查询":"icon-gear",

    "国内航班统计":"entypo-book-open",
    "机场位置分布":"icon-location",
    "各省机场统计":"fontawesome-list-ul",
    "航空航班统计":"icon-document",
    "飞机机型统计":"icon-graph-bar",

    "个人信息管理":"icon-user",
    "查看个人信息":"icon-user",
    "修改个人信息":"icon-document-edit"
};

function toAdminIndex() {
    submitFormWithUsername("/user/toAdminIndex");
}

function toUserManage() {
    submitFormWithUsername("/user/toUserManager");
}

function toPrivilege() {
    submitFormWithUsername("/user/toPrivilege");
}

function toRole() {
    submitFormWithUsername("/user/toRole");
}

function toLogin() {
    var form = document.createElement("form");
    form.method = "post";
    form.action = "/basicFunction/toLogin";
    $(form).appendTo("body").submit();
}

function submitFormWithUsername(path) {
    var form = document.createElement("form");
    var input = document.createElement("input");
    input.name = "username";
    input.value = document.getElementById("welcome").innerHTML;
    form.appendChild(input);
    form.method = "post";
    form.action = path;
    $(form).appendTo("body").submit();
}

