package org.des.service;

import java.util.List;
import org.des.domain.Permission;
import org.des.domain.Role;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 17:33 2020/10/23
 */
public interface IRoleService {
    
    List<Role> findAll(Integer page, Integer pageSize);
    
    void save(Role role);
    
    Role findById(String roleId);
    
    void deleteRoleById(String roleId);
    
    void addPermissionToRole(String roleId, String[] permissionIds);
    
    List<Permission> findOtherPermissions(String roleId);
}
