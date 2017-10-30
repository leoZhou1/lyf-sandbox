package com.lyf.sandbox.service;

import com.lyf.sandbox.domain.InterfaceCate;

import java.util.List;

public interface InterfaceCateService {
    List<InterfaceCate> getInterfaceCateByProjectId(Long projectId);
}
