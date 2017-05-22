/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
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
 * @author ThinkGem
 * @version 2013-05-21
 */
public interface StatsService extends BaseService<Article> {

    List<Category> article(Map<String, Object> paramMap);
}
