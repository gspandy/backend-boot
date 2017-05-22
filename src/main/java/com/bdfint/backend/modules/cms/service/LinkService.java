/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.Link;

import java.util.List;

/**
 * 链接Service
 *
 * @author ThinkGem
 * @version 2013-01-15
 */
public interface LinkService extends BaseService<Link> {


    List<Object[]> findByIds(String ids) throws Exception;
}
