package org.des.dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.des.domain.Orders;
import org.des.domain.Room;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 21:04 2020/10/18
 */
public interface IOrdersDao {
    
    @Select("select * from orders where 1=1 and (customer like concat('%',#{fuzzyName},'%') or orderTime like concat('%',#{fuzzyName},'%')) order by oid DESC ")
    @Results({
            @Result(id = true,property = "oid",column = "oid"),
            @Result(property = "orderNum" ,column = "orderNum"),
            @Result(property = "orderTime" ,column = "orderTime"),
            @Result(property = "customer" ,column = "customer"),
            @Result(property = "idCardNum" ,column = "idCardNum"),
            @Result(property = "phoneNum" ,column = "phoneNum"),
            @Result(property = "comeTime" ,column = "comeTime"),
            @Result(property = "departureTime" ,column = "departureTime"),
            @Result(property = "orderPrice" ,column = "orderPrice"),
            @Result(property = "room",column = "roomId",javaType = Room.class,one =@One(select = "org.des.dao.IRoomDao.findById")),
    })
    List<Orders> findAll(@Param("fuzzyName") String fuzzyName);
    
    @Select("select * from orders where oid=#{oid}")
    @Results({
            @Result(id = true,property = "oid",column = "oid"),
            @Result(property = "orderNum" ,column = "orderNum"),
            @Result(property = "orderTime" ,column = "orderTime"),
            @Result(property = "customer" ,column = "customer"),
            @Result(property = "idCardNum" ,column = "idCardNum"),
            @Result(property = "phoneNum" ,column = "phoneNum"),
            @Result(property = "comeTime" ,column = "comeTime"),
            @Result(property = "departureTime" ,column = "departureTime"),
            @Result(property = "orderPrice" ,column = "orderPrice"),
            @Result(property = "room",column = "roomId",javaType = Room.class,one =@One(select = "org.des.dao.IRoomDao.findById")),
    })
    Orders findById(int oid);
    
    //更新信息
    @Update("update orders set departureTime = #{departureTime},orderPrice = #{orderPrice}  where oid = #{oid}")
    void update(Orders orders);
    
    @Insert("insert into orders(orderNum,orderTime,customer,idCardNum,phoneNum,comeTime,departureTime,orderPrice,roomId) values(#{orderNum},#{orderTime},#{customer},#{idCardNum},#{phoneNum},#{comeTime},#{departureTime},#{orderPrice},#{roomId})")
    void addOrder(Orders orders);
    
    //根据id删除
    @Delete("delete from orders where oid = #{oid}")
    void deleteById(String id);
}
