/*
 * Copyright (c) 2017. <a href="http://www.lufengc.com">lufengc</a> All rights reserved.
 */

package com.bdfint.backend.modules.gen.mapper;

import com.bdfint.backend.framework.common.CommonMapper;
import com.bdfint.backend.modules.gen.bean.GenTableColumn;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * @author fengcheng
 * @version 2017/2/28
 */
@Mapper
@Repository
public interface GenTableColumnMapper extends CommonMapper<GenTableColumn> {

}
