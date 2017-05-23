/*
 * Copyright (c) 2017. <a href="http://www.lufengc.com">lufengc</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.Link;

import java.util.List;

/**
 * 链接Service
 *
 * @author fengcheng
 * @version 2016-09-12
 */
public interface LinkService extends BaseService<Link> {


    List<Object[]> findByIds(String ids) throws Exception;
}
