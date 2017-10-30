package com.lyf.sandbox.dao;

import com.lyf.sandbox.domain.Project;

import java.util.List;

public interface ProjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Long id);

    List<Project> selectAllProject();

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);
}