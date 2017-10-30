package com.lyf.sandbox.controller;

import com.lyf.sandbox.domain.Interface;
import com.lyf.sandbox.domain.Project;
import com.lyf.sandbox.service.InterfaceService;
import com.lyf.sandbox.service.ProjectService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class InterfaceController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Autowired
	private InterfaceService interfaceService;
	@Autowired
	private ProjectService projectService;

	@RequestMapping(value = "/interface/", method = RequestMethod.POST)
	public ModelAndView saveInterface(Interface inter){
		LOGGER.info("interface:{}",inter);
		interfaceService.addInterface(inter);
		return new ModelAndView("redirect:/sandbox");
	}

	@RequestMapping("/interface/toAdd")
	public String toAdd(Model model){
		List<Project> list = projectService.getProjectList();
		model.addAttribute("projectList",list);
		return "addInterface";
	}
	
	@RequestMapping(value="/interface/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Interface getInterfaceById(@PathVariable(value="id") Long id){
		return interfaceService.getInterfaceById(id);
	}
}
