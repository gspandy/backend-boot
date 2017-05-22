/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.Category;

import java.util.List;

/**
 * 栏目Service
 *
 * @author lufengc
 * @version 2013-5-31
 */
public interface CategoryService extends BaseService<Category> {

    List<Category> getByUser(boolean isCurrentSite, String module) throws Exception;

    List<Category> getByParentId(String parentId, String siteId);

    List<Category> getByIds(String ids) throws Exception;

    void updateSort(Integer[] ids, Integer[] sortIds);

    List<Category> getByParentIdsLike(String parentIds);
}
