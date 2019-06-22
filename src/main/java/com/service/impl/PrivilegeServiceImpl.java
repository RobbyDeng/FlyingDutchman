package com.service.impl;

import com.dao.PrivilegeDao;
import com.pojo.Privilege;
import com.service.PrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2019/3/9.
 */
@Service
public class PrivilegeServiceImpl implements PrivilegeService {
    @Autowired
    private PrivilegeDao privilegeDao;

    public int addPrivilege(Privilege privilege) {
        return privilegeDao.addPrivilege(privilege);
    }

    public int updatePrivilege(Privilege privilege) {
        return privilegeDao.updatePrivilege(privilege);
    }

    public int deletePrivilege(String code) {
        return privilegeDao.deletePrivilege(code);
    }

    public Privilege queryDisabledPrivilege(){
        return privilegeDao.queryDisabledPrivilege();
    }

    public Privilege queryPrivilegeByCode(String code){
        return privilegeDao.queryPrivilegeByCode(code);
    }

    public List<Privilege> queryPrivilegeByParent(String parentPrivilege){
        return privilegeDao.queryPrivilegeByParent(parentPrivilege);
    }

    public List<Privilege> queryAllPrivilege() {
        return privilegeDao.queryAllPrivilege();
    }

    @Override
    public void deletePrivilegeBatch(List<String> idList) {
        privilegeDao.deletePrivilegeBatch(idList);
    }
}
