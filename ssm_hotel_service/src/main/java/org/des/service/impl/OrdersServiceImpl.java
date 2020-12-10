package org.des.service.impl;

import com.github.pagehelper.PageHelper;
import java.util.List;
import org.des.dao.IOrdersDao;
import org.des.dao.IRoomDao;
import org.des.domain.Orders;
import org.des.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 21:03 2020/10/18
 */
@Service
@Transactional
public class OrdersServiceImpl implements IOrdersService {
    
    
    @Autowired
    private IOrdersDao ordersDao;
    
    @Autowired
    private IRoomDao roomDao;
    
    @Override
    public List<Orders> findAll(Integer page, Integer pageSize, String fuzzyName){
        PageHelper.startPage(page, pageSize);
        return ordersDao.findAll(fuzzyName);
    }
    
    @Override
    public Orders findById(int oid) {
        return ordersDao.findById(oid);
    }
    
    //更新信息
    @Override
    public void update(Orders orders){
        ordersDao.update(orders);
    }
    
    @Override
    public void addOrder(Orders orders) {
        // 新建一条订单
        ordersDao.addOrder(orders);
    
        //改变房间的状态
        roomDao.updateRoomState2(orders.getRoomId());
    }
    
    //根据id删除
    @Override
    public void deleteById(String id){
        ordersDao.deleteById(id);
    }
}
