package com.bdfint.backend.modules.cms.mapper;

import com.bdfint.backend.framework.common.CommonMapper;
import com.bdfint.backend.modules.cms.bean.Article;
import com.bdfint.backend.modules.gen.bean.GenTable;
import com.bdfint.backend.modules.gen.bean.GenTableColumn;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author fengcheng
 * @version 2017/2/28
 */
@Mapper
@Repository
public interface ArticleMapper extends CommonMapper<Article> {

}
