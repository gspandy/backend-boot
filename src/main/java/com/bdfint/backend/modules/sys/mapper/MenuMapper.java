package com.bdfint.backend.modules.sys.mapper;

import com.bdfint.backend.framework.common.CommonMapper;
import com.bdfint.backend.modules.sys.bean.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author fengcheng
 * @version 2017/2/28
 */
@Repository
public interface MenuMapper extends CommonMapper<Menu> {

    void deleteRoleMenuByMenuId(String menuId);

    List<Menu> selectMenuByUserId(String userId);

    List<Menu> selectMenuByRoleId(String roleId);
}
