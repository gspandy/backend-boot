/*
 * Copyright (c) 2017. <a href="http://www.lufengc.com">lufengc</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.Category;

import java.util.List;

/**
 * 栏目Service
 *
 * @author fengcheng
 * @version 2016-09-12
 */
public interface CategoryService extends BaseService<Category> {

    List<Category> getByUser(boolean isCurrentSite, String module) throws Exception;

    List<Category> getByParentId(String parentId, String siteId);

    List<Category> getByIds(String ids) throws Exception;

    void updateSort(String[] ids, Integer[] sortIds) throws Exception;

    List<Category> getByParentIdsLike(String parentIds);
}
