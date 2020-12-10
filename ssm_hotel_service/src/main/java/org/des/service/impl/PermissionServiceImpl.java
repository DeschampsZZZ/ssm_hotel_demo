package org.des.service.impl;

import com.github.pagehelper.PageHelper;
import java.util.List;
import org.des.dao.IPermissionDao;
import org.des.domain.Permission;
import org.des.service.IPermissionService;
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
public class PermissionServiceImpl implements IPermissionService {
    
    @Autowired
    private IPermissionDao permissionDao;
    
    @Override
    public void deleteById(String id){
        permissionDao.deleteFromRole_Permission(id);
        permissionDao.deleteById(id);
        
    }
    
    @Override
    public Permission findById(String id){
        return permissionDao.findById(id);
    }
    
    @Override
    public void save(Permission permission){
        permissionDao.save(permission);
    }
    
    @Override
    public List<Permission> findAll(Integer page, Integer pageSize){
        PageHelper.startPage(page, pageSize);
        return permissionDao.findAll();
    }
}
