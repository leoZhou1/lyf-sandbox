package com.lyf.sandbox.controller;

import com.lyf.sandbox.domain.Project;
import com.lyf.sandbox.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProjectController {
    @Autowired
    private ProjectService projectService;

    @RequestMapping("/project/all")
    @ResponseBody
    public List<Project> getProjectList(){
        List<Project> projectList = new ArrayList<Project>();
        projectList = projectService.getProjectList();
        return projectList;
    }
}
