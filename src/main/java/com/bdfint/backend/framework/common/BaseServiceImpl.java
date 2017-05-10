/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.framework.common;

import com.bdfint.backend.framework.util.Reflections;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Condition;

import java.util.List;

/**
 * service基类实现类
 *
 * @author lufengcheng
 * @date 2016-01-15 09:56:22
 */
public abstract class BaseServiceImpl<T extends DataEntity<T>> implements BaseService<T> {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    protected Mapper<T> mapper;

    /**
     * 插入
     *
     * @param object T
     */
    @Override
    public int insert(T object) throws Exception {
        return mapper.insertSelective(object);
    }

    /**
     * 更新
     *
     * @param object T
     */
    @Override
    public void update(T object) throws Exception {
        mapper.updateByPrimaryKeySelective(object);
    }

    /**
     * 删除
     *
     * @param ids 删除的ID
     * @return 删除数量
     */
    @Override
    public int delete(String ids) throws Exception {
        String[] split = ids.split(",");
        for (String s : split) {
            mapper.deleteByPrimaryKey(s);
        }
        return split.length;
    }

    /**
     * 根据ID查询
     *
     * @param id 对象id
     * @return Object
     */
    public T get(String id) throws Exception {
        T entity = mapper.selectByPrimaryKey(id);
        if (entity == null) {
            @SuppressWarnings("unchecked")
            Class<T> entityClass = Reflections.getClassGenricType(getClass());
            entity = entityClass.newInstance();
        }
        return entity;
    }

    /**
     * 查询列表,
     * 参数为空对象，则查询所有，如：getList(new SysUser())
     *
     * @param object 要查询的对象
     * @return List<T>
     */
    public List<T> getList(T object) throws Exception {
        List<T> list = mapper.select(object);
        if (list == null) {
            list = Lists.newArrayList();
        }
        return list;
    }

    /**
     * 分页查询
     *
     * @param object 分页对象
     * @return Page<T>
     */
    @Override
    public PageInfo<T> getPage(T object, Condition condition) throws Exception {
        condition.setOrderByClause(object.getOrderBy());
        PageHelper.startPage(object.getPageNum(), object.getPageSize());
        List<T> list = mapper.selectByExample(condition);
        PageInfo<T> page = new PageInfo<>(list);
        page.setPageNum(object.getPageNum());
        page.setPageSize(object.getPageSize());
        return page;
    }
}
