/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */
package com.bdfint.backend.modules.cms.service.impl;


import com.bdfint.backend.framework.common.BaseServiceImpl;
import com.bdfint.backend.modules.cms.bean.Article;
import com.bdfint.backend.modules.cms.bean.Category;
import com.bdfint.backend.modules.cms.bean.Site;
import com.bdfint.backend.modules.cms.service.StatsService;
import com.google.common.collect.Lists;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 统计Service
 *
 * @author lufengc
 * @version 2016-09-12
 */
@Service
public class StatsServiceImpl extends BaseServiceImpl<Article> implements StatsService {


    @Override
    public List<Category> article(Map<String, Object> paramMap) {
        Category category = new Category();
        category.setSiteId(Site.getCurrentSiteId());


        return Lists.newArrayList();
    }

    @Override
    public String save(Article object) throws Exception {
        return null;
    }
}
