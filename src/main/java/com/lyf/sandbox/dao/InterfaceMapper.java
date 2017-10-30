package com.lyf.sandbox.dao;

import java.util.List;

import com.lyf.sandbox.domain.Interface;
import com.lyf.sandbox.domain.InterfaceWithBLOBs;

public interface InterfaceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Interface record);

    int insertSelective(Interface record);

    Interface selectByPrimaryKey(Long id);
    /**
     * 查询所有接口
     * @return
     */
    List<Interface> selectAllInterface();

    int updateByPrimaryKeySelective(Interface record);

    int updateByPrimaryKeyWithBLOBs(Interface record);

    int updateByPrimaryKey(Interface record);
}