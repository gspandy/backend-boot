/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.sys.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.sys.bean.User;

import java.util.List;

/**
 * 用户service实现类
 *
 * @author lufengcheng
 * @date 2016-01-13 09:41:50
 */
public interface UserService extends BaseService<User> {


    /**
     * 根据用户名查询
     *
     * @param username 用户名
     * @return User
     */
    User getByLoginName(String username);

    /**
     * 根据角色ID查询用户列表
     *
     * @param roleId roleId
     * @return List<User>
     */
    List<User> getUserByRoleId(String roleId);

    /**
     * 更新当前用户信息
     *
     * @param currentUser 当前用户
     */
    void updateUserInfo(User currentUser) throws Exception;

    /**
     * 根据机构ID查询用户列表
     *
     * @param officeId officeId
     * @return List<User>
     */
    List<User> getUserByOfficeId(String officeId);

    int updateStatus(String ids, User user) throws Exception;

    int initPassword(String ids, String password) throws Exception;

}
