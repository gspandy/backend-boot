/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.modules.sys.service.impl;

import com.bdfint.backend.framework.common.BaseServiceImpl;
import com.bdfint.backend.framework.util.Encodes;
import com.bdfint.backend.framework.util.StringUtils;
import com.bdfint.backend.modules.sys.bean.Area;
import com.bdfint.backend.modules.sys.bean.Menu;
import com.bdfint.backend.modules.sys.mapper.AreaMapper;
import com.bdfint.backend.modules.sys.service.AreaService;
import com.bdfint.backend.modules.sys.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * 区域Service
 *
 * @author jeeplus
 * @version 2014-05-16
 */
@Service
public class AreaServiceImpl extends BaseServiceImpl<Area> implements AreaService {

    @Autowired
    private AreaMapper areaMapper;

    /**
     * 保存或更新操作
     *
     * @param object Object
     * @return 主键ID
     */
    @Override
    public String save(Area object) throws Exception {
        String oldParentIds = object.getParentIds();
        Area parent = get(object.getParentId());
        if (parent != null) {
            object.setParentIds(parent.getParentIds() + parent.getId() + ",");
        } else {
            object.setParentIds(Menu.getRootId());
        }
        if (StringUtils.isNotEmpty(object.getId())) {
            super.update(object);
            // 更新子节点parentIds
            Example example = new Example(Area.class);
            example.createCriteria().andLike("parentId", ",object.getId(),");
            List<Area> list = areaMapper.selectByExample(example);
            if (list != null && list.size() > 0) {
                for (Area p : list) {
                    p.setParentIds(p.getParentIds().replace(oldParentIds, object.getParentIds()));
                    super.update(object);
                }
            }
        } else {
            List<Area> areaList = UserUtils.getAreaList();
            int sort = 0;
            for (Area area : areaList) {
                if (area.getSort() > sort) {
                    sort = area.getSort();
                }
            }
            object.setSort(sort);
            object.setId(Encodes.uuid());
            super.insert(object);
        }
        UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
        return object.getId();
    }

    /**
     * 删除操作
     *
     * @param ids 删除的ID
     * @return String
     */
    @Override
    public int delete(String ids) throws Exception {
        super.delete(ids);
        UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
        return 1;
    }
}
