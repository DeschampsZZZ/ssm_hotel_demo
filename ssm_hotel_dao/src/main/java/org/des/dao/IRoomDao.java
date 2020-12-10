package org.des.dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.des.domain.Room;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 15:57 2020/10/05
 */
public interface IRoomDao {
    
    //查询全部房型信息，模糊查询
    @Select("select * from room where 1=1 and (roomType like concat('%',#{fuzzyName},'%') or roomState like concat('%',#{fuzzyName},'%')) order by roomNumber ")
    List<Room> findAll(@Param("fuzzyName") String fuzzyName);
    
    //根据id查询
    @Select("select * from room where roomId = #{roomId}")
    Room findById(int roomId);
    
    /*//根据id查询
    @Select("select * from room where roomId = #{roomId}")
    Room findById2(int roomId);*/
    
    //根据id删除
    @Delete("delete from room where roomId = #{roomId}")
    void deleteById(String id);
    
    //新建房间保存
    @Insert("insert into room(roomId,roomType,roomState,roomPrice,roomNumber) values(#{roomId},#{roomType},#{roomState},#{roomPrice},#{roomNumber})")
    void addRoom(Room room);
    
    //更新信息
    @Update("update room set roomType = #{roomType},roomState = #{roomState},roomPrice = #{roomPrice},roomNumber = #{roomNumber} where roomId = #{roomId}")
    void update(Room room);
    
    //查询房间信息
    @Select("select * from room")
    List<Room> findAllRoom();
    
    //查询全部房间数量
    @Select("select count(*) from room")
    Integer findAllCount();
    
    
    //查询空闲房间数量
    @Select("select count(*) from room where roomState = '空房'")
    Integer findVacantCount();
    
    //查询住人房间数量
    @Select("select count(*) from room where roomState= '住人'")
    Integer findPeopleCount();
    
    //根据房间状态查询
    @Select("select * from room where roomState= #{roomState}")
    List<Room> findByRoomState(String roomState);
    
    //根据id修改房间状态为空房
    @Update("update room set roomState = '空房' where roomId = #{roomId}")
    void updateRoomState1(Integer roomId);
    
    //根据id修改房间状态为住人
    @Update("update room set roomState = '住人' where roomId = #{roomId}")
    void updateRoomState2(Integer roomId);
    
    //根据房间型号查找相应房间
    @Select("select * from room where roomType = #{roomType}")
    List<Room> findByRoomType(String roomType);
}
