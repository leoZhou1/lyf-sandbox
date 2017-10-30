package com.lyf.sandbox.dao;

import com.lyf.sandbox.domain.ParamList;

public interface ParamListMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ParamList record);

    int insertSelective(ParamList record);

    ParamList selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ParamList record);

    int updateByPrimaryKey(ParamList record);
}