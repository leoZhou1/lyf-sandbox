package com.lyf.sandbox.service.impl;

import com.lyf.sandbox.dao.ProjectMapper;
import com.lyf.sandbox.domain.Project;
import com.lyf.sandbox.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectMapper projectMapper;

    @Override
    public List<Project> getProjectList(){
        return projectMapper.selectAllProject();
    }

    public Project getProjectById(Long id){
        return projectMapper.selectByPrimaryKey(id);
    }
}
