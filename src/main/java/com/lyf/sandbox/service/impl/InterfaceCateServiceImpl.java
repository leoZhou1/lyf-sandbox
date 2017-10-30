package com.lyf.sandbox.service.impl;

import com.lyf.sandbox.dao.InterfaceCateMapper;
import com.lyf.sandbox.domain.InterfaceCate;
import com.lyf.sandbox.service.InterfaceCateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InterfaceCateServiceImpl implements InterfaceCateService {
    @Autowired
    private InterfaceCateMapper interfaceCateMapper;

    @Override
    public List<InterfaceCate> getInterfaceCateByProjectId(Long projectId){
        return interfaceCateMapper.selectByProjectId(projectId);
    }
}
