package com.lyf.sandbox.controller;

import java.util.List;

import com.lyf.sandbox.domain.Interface;
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
    @RequestMapping(value = "/sandbox", method = RequestMethod.GET)
    public String toSandbox(Model model) {
    	List<Interface> interfaceList = interfaceService.selectAllInterface();
    	model.addAttribute("interfaceList", interfaceList);
        return "sandbox";
    }
}
