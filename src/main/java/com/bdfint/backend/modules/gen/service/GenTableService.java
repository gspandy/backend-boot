/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.gen.service;


import com.bdfint.backend.framework.common.BaseService;
import com.bdfint.backend.modules.gen.bean.GenScheme;
import com.bdfint.backend.modules.gen.bean.GenTable;

import java.util.List;

/**
 * 业务表Service
 *
 * @author lufengc
 * @version 2016/7/29 0:33
 */
public interface GenTableService extends BaseService<GenTable> {

    List<GenTable> findTableListFormDb(GenTable genTable);

    boolean checkTableName(String name);

    GenTable getTableFormDb(GenTable genTable);

    String genCode(GenScheme genScheme) throws Exception;

}
