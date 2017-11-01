package com.lyf.sandbox.controller;

import java.util.List;

import com.lyf.sandbox.domain.Interface;
import com.lyf.sandbox.domain.Project;
import com.lyf.sandbox.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lyf.sandbox.domain.InterfaceWithBLOBs;
import com.lyf.sandbox.service.InterfaceService;

@Controller
public class SandboxController {

	@Autowired
	private InterfaceService interfaceService;
	@Autowired
	private ProjectService projectService;

    @RequestMapping(value = "/sandbox")
    public String toSandbox(Model model) {
        List<Project> list = projectService.getProjectList();
        model.addAttribute("projectList",list);
        return "sandbox";
    }
}
