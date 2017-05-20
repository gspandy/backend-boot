package com.bdfint.backend.modules.sys.mapper;

import com.bdfint.backend.framework.common.CommonMapper;
import com.bdfint.backend.modules.sys.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author fengcheng
 * @version 2017/2/28
 */
@Mapper
@Repository
public interface UserMapper extends CommonMapper<User> {

    List<User> selectUserByRoleId(String roleId);

    void deleteUserRoleByUserId(String userId);

    void insertUserRole(User user);
}
