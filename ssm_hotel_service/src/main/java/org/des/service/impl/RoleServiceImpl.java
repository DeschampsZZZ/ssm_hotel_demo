package org.des.service.impl;

import com.github.pagehelper.PageHelper;
import java.util.List;
import org.des.dao.IRoleDao;
import org.des.domain.Permission;
import org.des.domain.Role;
import org.des.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 17:34 2020/10/23
 */
@Service
@Transactional
public class RoleServiceImpl implements IRoleService {
    
    @Autowired
    private IRoleDao roleDao;
    
    @Override
    public List<Permission> findOtherPermissions(String roleId){
        return roleDao.findOtherPermissions(roleId);
    }
    
    @Override
    public void addPermissionToRole(String roleId, String[] permissionIds){
        for (String permissionId : permissionIds) {
            roleDao.addPermissionToRole(roleId, permissionId);
        }
        
    }
    
    @Override
    public void deleteRoleById(String roleId){
        //从user_role表中删除
        roleDao.deleteFromUser_RoleByRoleId(roleId);
        //从role_permission表中删除
        roleDao.deleteFromRole_PermissionByRoleId(roleId);
        //从role表中删除
        roleDao.deleteRoleById(roleId);
    }
    
    
    
    @Override
    public Role findById(String roleId){
        return roleDao.findById(roleId);
    }
    
    @Override
    public void save(Role role){
        roleDao.save(role);
    }
    
    @Override
    public List<Role> findAll(Integer page, Integer pageSize){
        PageHelper.startPage(page, pageSize);
        return roleDao.findAll();
    }
}
