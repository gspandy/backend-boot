package com.bdfint.backend.modules.gen.mapper;

import com.bdfint.backend.framework.common.CommonMapper;
import com.bdfint.backend.modules.gen.bean.GenTable;
import com.bdfint.backend.modules.gen.bean.GenTableColumn;
import com.bdfint.backend.modules.sys.bean.Area;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author fengcheng
 * @version 2017/2/28
 */
@Mapper
public interface GenTableMapper extends CommonMapper<GenTable> {

    List<GenTable> findTableList(String name);

    List<GenTableColumn> findTableColumnList(String name);

    List<String> findTablePK(String name);
}
