package com.lyf.sandbox.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lyf.sandbox.domain.InterfaceWithBLOBs;
import com.lyf.sandbox.service.InterfaceService;

@Controller
public class InterfaceController {

	@Autowired
	private InterfaceService interfaceController;
	
	@RequestMapping(value="/interface/{id}",method=RequestMethod.GET)
	@ResponseBody
	public InterfaceWithBLOBs getInterfaceById(@PathVariable(value="id") Long id){
		return interfaceController.getInterfaceById(id);
	}
}
