package com.lyf.sandbox.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lyf.sandbox.dao.InterfaceMapper;
import com.lyf.sandbox.domain.InterfaceWithBLOBs;
import com.lyf.sandbox.service.InterfaceService;
@Service
public class InterfaceServiceImpl implements InterfaceService {
	@Autowired
	private InterfaceMapper interfaceMapper;
	
	public InterfaceWithBLOBs getInterfaceById(Long id){
		return interfaceMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public List<InterfaceWithBLOBs> selectAllInterface(){
		return interfaceMapper.selectAllInterface();
	}
}
