package com.lyf.sandbox.service;

import com.lyf.sandbox.domain.Interface;

import java.util.List;

public interface InterfaceService {

	List<Interface> selectAllInterface();
	public Interface getInterfaceById(Long id);
	public void saveInterface (Interface inter);
}