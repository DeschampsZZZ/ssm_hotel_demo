package org.des.service;

import java.util.List;
import org.des.domain.Role;
import org.des.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 17:32 2020/10/23
 */
public interface IUserService  extends UserDetailsService {
    
    List<UserInfo> findAll(Integer page, Integer pageSize);
    
    void save(UserInfo userInfo);
    
    UserInfo findById(String id);
    
    List<Role> findOtherRoles(String userid);
    
    void addRoleToUser(String userId, String[] roleIds);
}
