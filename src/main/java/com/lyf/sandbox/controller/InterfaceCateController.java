package com.lyf.sandbox.controller;

import com.lyf.sandbox.domain.InterfaceCate;
import com.lyf.sandbox.service.InterfaceCateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class InterfaceCateController {
    @Autowired
    private InterfaceCateService interfaceCateService;

    @RequestMapping("/interfaceCate/{projectId}")
    @ResponseBody
    public List<InterfaceCate> getInterfaceCateByProjectId(@PathVariable Long projectId){
        return interfaceCateService.getInterfaceCateByProjectId(projectId);
    }
}
