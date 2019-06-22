package com.service;

import com.pojo.User;

import java.util.List;

/**
 * Created by dell on 2018/7/25.
 */
public interface UserService {
    int addUser(User user);

    int updateUser(User user);

    int deleteUser(int userId);

    void deleteUserByRole(int roleId);

    User queryUserByName(String name);

    List<User> queryAllUser();

    int getNumberOfUser();

    void deleteUserBatch(int[] idList);

    void deleteUserBatchByRole(int[] idList);
}
