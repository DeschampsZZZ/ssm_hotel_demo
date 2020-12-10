package org.des.service;

import java.util.List;
import org.des.domain.Permission;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 17:34 2020/10/23
 */
public interface IPermissionService {
    List<Permission> findAll(Integer page,Integer pageSize);
    
    void save(Permission permission);
    
    Permission findById(String id);
    
    void deleteById(String id);
}
