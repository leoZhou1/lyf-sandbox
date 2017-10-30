package com.lyf.sandbox.dao;

import com.lyf.sandbox.domain.InterfaceCate;

import java.util.List;

public interface InterfaceCateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(InterfaceCate record);

    int insertSelective(InterfaceCate record);

    InterfaceCate selectByPrimaryKey(Long id);

    List<InterfaceCate> selectByProjectId(Long projectId);

    int updateByPrimaryKeySelective(InterfaceCate record);

    int updateByPrimaryKey(InterfaceCate record);
}