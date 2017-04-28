/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.sys.service.impl;

import com.bdfint.backend.framework.cache.JedisUtils;
import com.bdfint.backend.framework.common.BaseServiceImpl;
import com.bdfint.backend.framework.util.Encodes;
import com.bdfint.backend.modules.sys.bean.Dict;
import com.bdfint.backend.modules.sys.service.DictService;
import com.bdfint.backend.modules.sys.utils.DictUtils;
import org.springframework.stereotype.Service;

/**
 * 字典表service实现类
 *
 * @author lufengc
 * @version 2016/1/16 14:05
 */
@Service
public class DictServiceImpl extends BaseServiceImpl<Dict> implements DictService {

    /**
     * 保存
     *
     * @param object Dict
     * @return ID
     */
    @Override
    public String save(Dict object) throws Exception {
        String id = object.getId();
        if (object.getId() != null) {
            super.update(object);
        } else {
            object.setId(Encodes.uuid());
            super.insert(object);
            id = object.getId();
        }
        JedisUtils.delObject(DictUtils.CACHE_DICT_MAP);
        return id;
    }

    /**
     * 删除
     *
     * @param ids 删除的ID
     * @return int
     */
    @Override
    public int delete(String ids) throws Exception {
        int delete = super.delete(ids);
        JedisUtils.delObject(DictUtils.CACHE_DICT_MAP);
        return delete;
    }

}
