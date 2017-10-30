package com.lyf.sandbox.dao;

import com.lyf.sandbox.domain.ProjectEnv;

public interface ProjectEnvMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProjectEnv record);

    int insertSelective(ProjectEnv record);

    ProjectEnv selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProjectEnv record);

    int updateByPrimaryKey(ProjectEnv record);
}