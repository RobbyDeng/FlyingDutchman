package com.service.impl;

import com.dao.RolePrivilegeDao;
import com.pojo.RolePrivilege;
import com.service.RolePrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/3/10.
 */
@Service
public class RolePrivilegeServiceImpl implements RolePrivilegeService {
    @Autowired
    RolePrivilegeDao rolePrivilegeDao;

    public int addRolePrivilege(List<RolePrivilege> rolePrivilegeList){
        return rolePrivilegeDao.addRolePrivilege(rolePrivilegeList);
    }

    public int deleteRolePrivilegeByRoleId(int roleId){
        return rolePrivilegeDao.deleteRolePrivilegeByRoleId(roleId);
    }

    public int deleteRolePrivilegeByPrivilegeId(String privilegeId){
        return rolePrivilegeDao.deleteRolePrivilegeByPrivilegeId(privilegeId);
    }

    public List<String> queryRolePrivilegeByRoleId(int roleId){
        return rolePrivilegeDao.queryRolePrivilegeByRoleId(roleId);
    }

    public void deleteRolePrivilegeBatchByRole(int[] idList){
        rolePrivilegeDao.deleteRolePrivilegeBatchByRole(idList);
    }
}
