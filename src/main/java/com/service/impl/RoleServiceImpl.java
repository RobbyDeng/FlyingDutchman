package com.service.impl;

import com.dao.RoleDao;
import com.pojo.Role;
import com.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
@Service
public class RoleServiceImpl implements RoleService{
    @Autowired
    private RoleDao roleDao;

    public int addRole(Role role){
        return roleDao.addRole(role);
    }

    public int updateRole(Role role){
        return roleDao.updateRole(role);
    }

    public int deleteRole(int roleId){
        return roleDao.deleteRole(roleId);
    }

    public Role queryRoleByName(String name){
        return roleDao.queryRoleByName(name);
    }

    public List<Role> queryAllRole(){
        return roleDao.queryAllRole();
    }

    @Override
    public void deleteRoleBatch(int[] idList) {
        roleDao.deleteRoleBatch(idList);
    }
}
