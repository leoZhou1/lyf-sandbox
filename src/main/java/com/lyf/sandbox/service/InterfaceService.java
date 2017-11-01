package com.lyf.sandbox.service;

import com.lyf.sandbox.domain.Interface;

import java.util.List;

public interface InterfaceService {

	public List<Interface> selectBySelective(Interface inter);
	/**
	 * 查询所有接口
	 * @return
	 */
	List<Interface> selectAllInterface();
	/**
	 * 根据接口ID查询
	 * @param id
	 * @return
	 */
	public Interface getInterfaceById(Long id);

	/**
	 * 保存接口
	 * @param inter
	 */
	public void saveInterface (Interface inter);
}