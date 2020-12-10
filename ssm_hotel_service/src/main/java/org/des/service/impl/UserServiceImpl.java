package org.des.service.impl;

import com.github.pagehelper.PageHelper;
import java.util.ArrayList;
import java.util.List;
import org.des.dao.IUserDao;
import org.des.domain.Role;
import org.des.domain.UserInfo;
import org.des.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 17:35 2020/10/23
 */
@Service("userService")
@Transactional
public class UserServiceImpl  implements IUserService {
    
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
    @Autowired
    private IUserDao userDao;
    
    @Override
    public void addRoleToUser(String userId, String[] roleIds){
        for(String roleId:roleIds){
            userDao.addRoleToUser(userId,roleId);
        }
    }
    
    @Override
    public List<Role> findOtherRoles(String userid){
        return userDao.findOtherRoles(userid);
    }
    
    @Override
    public UserInfo findById(String id){
        return userDao.findById(id);
    }
    
    @Override
    public void save(UserInfo userInfo){
        // 对密码进行加密处理
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));
        userDao.save(userInfo);
    }
    
    @Override
    public List<UserInfo> findAll(Integer page, Integer pageSize){
        PageHelper.startPage(page, pageSize);
        return userDao.findAll();
    }
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserInfo userInfo = null;
        try {
            userInfo = userDao.findByUsername(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //处理自己的用户对象封装成UserDetails，注意密码在没有加密做密文的前提下需要加一个前缀{noop}
        //  User user=new User(userInfo.getUsername(),"{noop}"+userInfo.getPassword(),getAuthority(userInfo.getRoles()));
        User user = new User(userInfo.getUsername(),userInfo.getPassword(), userInfo.getStatus() == 0 ? false : true, true, true, true, getAuthority(userInfo.getRoles()));
        return user;
    }
    
    /**
     * 作用就是返回一个List集合，集合中装入的是角色描述
     * @param roles
     * @return
     */
    public List<SimpleGrantedAuthority> getAuthority(List<Role> roles) {
    
        List<SimpleGrantedAuthority> list = new ArrayList<>();
        for (Role role : roles) {
            list.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
        }
        return list;
    
    }
}
