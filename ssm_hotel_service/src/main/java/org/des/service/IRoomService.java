package org.des.service;

import java.util.List;
import org.des.domain.Room;
import org.des.domain.RoomCount;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 15:59 2020/10/05
 */
public interface IRoomService {
    
    //查询全部房型信息，模糊查询
    List<Room> findAll(Integer page,Integer pageSize,String fuzzyName);
    
    //根据id查询
    Room findById(int roomId);
    
   /* //根据id查询
    Room findById2(int roomId);*/
    
    //根据id删除
     void deleteById(String id);
    
    //新建房间保存
    void addRoom(Room room);
    
    //更新信息
    void update(Room room);
    
    //查询房间信息
    List<Room> findAllRoom();
    
    //查询各种状态下的房间数量
    RoomCount findCount();
    
    //根据房间状态查询
    List<Room> findByRoomState(String roomState);
    
    //根据id修改房间状态为空房
    void updateRoomState1(int roomId);
    
    //根据房间型号查找相应房间
    List<Room> findByRoomType(String roomType);
}
