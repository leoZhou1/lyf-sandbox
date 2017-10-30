package com.lyf.sandbox.dao;

import com.lyf.sandbox.domain.InterfaceCate;

public interface InterfaceCateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(InterfaceCate record);

    int insertSelective(InterfaceCate record);

    InterfaceCate selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(InterfaceCate record);

    int updateByPrimaryKey(InterfaceCate record);
}