package com.lyf.sandbox.dao;

import java.util.List;

import com.lyf.sandbox.domain.Interface;

public interface InterfaceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Interface record);

    int insertSelective(Interface record);

    Interface selectByPrimaryKey(Long id);

    Interface selectInterfaceDetailById(Long id);

    List<Interface> selectBySelective(Interface record);
    /**
     * 查询所有接口
     * @return
     */
    List<Interface> selectAllInterface();

    int updateByPrimaryKeySelective(Interface record);

    int updateByPrimaryKeyWithBLOBs(Interface record);

    int updateByPrimaryKey(Interface record);
}