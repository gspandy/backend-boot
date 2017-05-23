/*
 * Copyright (c) 2017. <a href="http://www.lufengc.com">lufengc</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.FileTpl;

import java.util.List;

/**
 * @author fengcheng
 * @version 2016-09-12
 */
public interface FileTplService extends BaseService<FileTpl> {

    List<String> getNameListByPrefix(String path);

    List<FileTpl> getListByPath(String path, boolean directory);

    List<FileTpl> getListForEdit(String path);

    void getAllDirectory(List<FileTpl> result, List<FileTpl> list);

    FileTpl getFileTpl(String name);
}
