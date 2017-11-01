package com.lyf.sandbox.service.impl;

import java.util.Date;
import java.util.List;

import com.lyf.sandbox.domain.Interface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lyf.sandbox.dao.InterfaceMapper;
import com.lyf.sandbox.service.InterfaceService;
import org.springframework.util.StringUtils;

@Service
public class InterfaceServiceImpl implements InterfaceService {
	@Autowired
	private InterfaceMapper interfaceMapper;

	public List<Interface> selectBySelective(Interface inter){
		return interfaceMapper.selectBySelective(inter);
	}

	@Override
	public Interface getInterfaceById(Long id){
//		return interfaceMapper.selectByPrimaryKey(id);
		return interfaceMapper.selectInterfaceDetailById(id);
	}
	
	@Override
	public List<Interface> selectAllInterface(){
		return interfaceMapper.selectAllInterface();
	}

	@Override
	public void saveInterface (Interface inter){
		if(StringUtils.isEmpty(inter.getId())) {
			inter.setCreateDate(new Date());
			interfaceMapper.insertSelective(inter);
		}else{
			interfaceMapper.updateByPrimaryKeySelective(inter);
		}
	}
}
