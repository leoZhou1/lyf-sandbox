package com.lyf.sandbox.dao;

import java.util.List;

import com.lyf.sandbox.domain.Interface;
import com.lyf.sandbox.domain.InterfaceWithBLOBs;

public interface InterfaceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(InterfaceWithBLOBs record);

    int insertSelective(InterfaceWithBLOBs record);

    InterfaceWithBLOBs selectByPrimaryKey(Long id);
    /**
     * 查询所有接口
     * @return
     */
    List<InterfaceWithBLOBs> selectAllInterface();

    int updateByPrimaryKeySelective(InterfaceWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(InterfaceWithBLOBs record);

    int updateByPrimaryKey(Interface record);
}