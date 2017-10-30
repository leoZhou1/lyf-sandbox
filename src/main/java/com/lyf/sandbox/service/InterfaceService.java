package com.lyf.sandbox.service;

import java.util.List;

import com.lyf.sandbox.domain.InterfaceWithBLOBs;

public interface InterfaceService {

	List<InterfaceWithBLOBs> selectAllInterface();
	public InterfaceWithBLOBs getInterfaceById(Long id);
}