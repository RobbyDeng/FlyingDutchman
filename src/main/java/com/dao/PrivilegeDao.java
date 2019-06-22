package com.dao;

import com.pojo.Privilege;

import java.util.List;

/**
 * Created by dell on 2019/3/9.
 */
public interface PrivilegeDao {
    int addPrivilege(Privilege privilege);

    int updatePrivilege(Privilege privilege);

    int deletePrivilege(String code);

    Privilege queryDisabledPrivilege();

    Privilege queryPrivilegeByCode(String code);

    List<Privilege> queryPrivilegeByParent(String parentPrivilege);

    List<Privilege> queryAllPrivilege();

    void deletePrivilegeBatch(List<String> idList);
}
