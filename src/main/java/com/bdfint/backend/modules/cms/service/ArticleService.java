/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;

import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.Article;
import com.bdfint.backend.modules.cms.bean.ArticleData;

import java.util.List;

/**
 * 系统角色service
 *
 * @author lufengcheng
 * @date 2016-01-15 09:56:22
 */
public interface ArticleService extends BaseService<Article> {

    String save(Article object, ArticleData articleData) throws Exception;

    ArticleData getArticleData(String id);

    void updateArticle(Article object) throws Exception;

    List<Object[]> getByIds(String ids) throws Exception;

    void updateWeight();
}
