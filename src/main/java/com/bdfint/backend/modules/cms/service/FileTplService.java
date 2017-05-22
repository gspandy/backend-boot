/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.cms.bean.FileTpl;

import java.util.List;

/**
 * User: songlai
 * Date: 13-8-27
 * Time: 下午4:56
 */
public interface FileTplService extends BaseService<FileTpl> {

    List<String> getNameListByPrefix(String path);

    List<FileTpl> getListByPath(String path, boolean directory);

    List<FileTpl> getListForEdit(String path);

    void getAllDirectory(List<FileTpl> result, List<FileTpl> list);

    FileTpl getFileTpl(String name);
}
