/*
 * Copyright (c) 2017. <a href="http://www.lufengc.com">lufengc</a> All rights reserved.
 */
package com.bdfint.backend.modules.cms.service.impl;

import com.bdfint.backend.framework.common.BaseServiceImpl;
import com.bdfint.backend.modules.cms.bean.Comment;
import com.bdfint.backend.modules.cms.service.CommentService;
import org.springframework.stereotype.Service;

/**
 * 评论Service
 *
 * @author fengcheng
 * @version 2016-09-12
 */
@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Override
    public String save(Comment object) throws Exception {
        return null;
    }
}
