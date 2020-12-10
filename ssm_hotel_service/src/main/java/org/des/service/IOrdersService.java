package org.des.service;

import java.util.List;
import org.des.domain.Orders;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 21:03 2020/10/18
 */
public interface IOrdersService {
    
    List<Orders> findAll(Integer page,Integer pageSize,String fuzzyName);
    
    Orders findById(int oid);
    
    //更新信息
    void update(Orders orders);
    
    void addOrder(Orders orders);
    
    void deleteById(String id);
}
