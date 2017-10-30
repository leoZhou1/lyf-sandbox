package com.lyf.sandbox.service.impl;

import java.util.Date;
import java.util.List;

import com.lyf.sandbox.domain.Interface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lyf.sandbox.dao.InterfaceMapper;
import com.lyf.sandbox.domain.InterfaceWithBLOBs;
import com.lyf.sandbox.service.InterfaceService;
@Service
public class InterfaceServiceImpl implements InterfaceService {
	@Autowired
	private InterfaceMapper interfaceMapper;
	
	public Interface getInterfaceById(Long id){
		return interfaceMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public List<Interface> selectAllInterface(){
		return interfaceMapper.selectAllInterface();
	}

	public void addInterface (Interface inter){
		inter.setCreateDate(new Date());
		interfaceMapper.insertSelective(inter);
	}
}
