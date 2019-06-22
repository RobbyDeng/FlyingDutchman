package com.service.impl;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2018/7/25.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public int addUser(User user) {
        return userDao.addUser(user);
    }

    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    public int deleteUser(int userId){
        return userDao.deleteUser(userId);
    }

    public void deleteUserByRole(int roleId){
        userDao.deleteUserByRole(roleId);
    }

    public User queryUserByName(String name) {
        return userDao.queryUserByName(name);
    }

    public List<User> queryAllUser() {
        return userDao.queryAllUser();
    }

    public int getNumberOfUser(){
        return userDao.getNumberOfUser();
    }

    public void deleteUserBatch(int[] idList){
        userDao.deleteUserBatch(idList);
    }

    @Override
    public void deleteUserBatchByRole(int[] idList) {
        userDao.deleteUserBatch(idList);
    }
}
