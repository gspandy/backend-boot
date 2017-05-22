/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.cms.service.impl;

import com.bdfint.backend.framework.common.BaseServiceImpl;
import com.bdfint.backend.modules.cms.bean.Guestbook;
import com.bdfint.backend.modules.cms.service.GuestbookService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

/**
 * 留言板service实现类
 *
 * @author lufengc
 * @date 2016-01-15 09:56:22
 */
@Service
public class GuestbookServiceImpl extends BaseServiceImpl<Guestbook> implements GuestbookService {

    @Override
    public String save(Guestbook object) throws Exception {
        if (StringUtils.isNotEmpty(object.getId())) {
            object.preUpdate();
            super.update(object);
        } else {
            object.preInsert();
            super.insert(object);
        }
        return object.getId();
    }

}
