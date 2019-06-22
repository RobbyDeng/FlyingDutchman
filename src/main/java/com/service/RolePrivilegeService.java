package com.service;

import com.pojo.RolePrivilege;

import java.util.List;

/**
 * Created by dell on 2019/3/10.
 */
public interface RolePrivilegeService {
    int addRolePrivilege(List<RolePrivilege> rolePrivilegeList);

    int deleteRolePrivilegeByRoleId(int roleId);

    int deleteRolePrivilegeByPrivilegeId(String privilegeId);

    List<String> queryRolePrivilegeByRoleId(int roleId);

    void deleteRolePrivilegeBatchByRole(int[] idList);
}
