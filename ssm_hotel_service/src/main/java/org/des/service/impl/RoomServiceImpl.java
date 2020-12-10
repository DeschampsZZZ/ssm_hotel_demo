package org.des.service.impl;

import com.github.pagehelper.PageHelper;
import java.util.List;
import org.des.dao.IRoomDao;
import org.des.domain.Room;
import org.des.domain.RoomCount;
import org.des.service.IRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 16:01 2020/10/05
 */
@Service
@Transactional
public class RoomServiceImpl implements IRoomService {
    
    @Autowired
    private IRoomDao roomDao;
    
    //查询全部房型信息，模糊查询
    @Override
    public List<Room> findAll(Integer page, Integer pageSize, String fuzzyName) {
        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
        PageHelper.startPage(page,pageSize);
        return roomDao.findAll(fuzzyName);
    
    }
    //根据id查询
    @Override
    public Room findById(int roomId) {
        return roomDao.findById(roomId);
    }
    
   /* //根据id查询
    @Override
    public Room findById2(int roomId) {
        return roomDao.findById(roomId);
    }*/
    
    //根据id删除
    @Override
    public void deleteById(String id){
        roomDao.deleteById(id);
    }
    
    //新建房间保存
    @Override
    public void addRoom(Room room){
        roomDao.addRoom(room);
    }
    
    //更新信息
    @Override
    public void update(Room room){
        roomDao.update(room);
    }
    
    //查询房间信息
    @Override
    public List<Room> findAllRoom() {
        return roomDao.findAllRoom();
    }
    
    // 统计房间数量
    @Override
    public RoomCount findCount() {
        RoomCount roomCount = new RoomCount();
        //查询全部房间数量
        roomCount.setAllRoomCount(roomDao.findAllCount());
        //查询空闲房间数量
        roomCount.setVacantCount(roomDao.findVacantCount());
        //查询住人房间数量
        roomCount.setPeopleCount(roomDao.findPeopleCount());
        return roomCount;
    }
    
    //根据房间状态查询
    @Override
    public List<Room> findByRoomState(String roomState) {
        return roomDao.findByRoomState(roomState);
    }
    
    //根据id修改房间状态为住人
    @Override
    public void updateRoomState1(int roomId) {
       roomDao.updateRoomState1(roomId);
    }
    
    //根据房间型号查找相应房间
    @Override
    public List<Room> findByRoomType(String roomType) {
        return roomDao.findByRoomType(roomType);
    }
}
