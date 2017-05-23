/*
 * Copyright (c) 2017. <a href="http://www.lufengc.com">lufengc</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;

import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.Article;
import com.bdfint.backend.modules.cms.bean.Category;

import java.util.List;
import java.util.Map;

/**
 * 统计Service
 *
 * @author fengcheng
 * @version 2016-09-12
 */
public interface StatsService extends BaseService<Article> {

    List<Category> article(Map<String, Object> paramMap);
}
