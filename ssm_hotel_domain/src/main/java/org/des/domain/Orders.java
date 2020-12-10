package org.des.domain;

import java.util.Date;
import org.des.utils.DateConvertUtils;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 17:46 2020/10/18
 */
public class Orders {
    
    /**
     * 订单id
     */
    private Integer oid;
    /**
     * 订单编号
     */
    private String orderNum;
    /**
     * 订单时间
     */
    private Date orderTime;
    
    private String orderTimeStr;
    /**
     * 顾客
     */
    private String customer;
    /**
     * 身份证号
     */
    private String idCardNum;
    /**
     * 手机号
     */
    private Integer phoneNum;
    /**
     * 入住时间
     */
   
    private Date comeTime;
    
    private String comeTimeStr;
    /**
     * 离店时间
     */
 
    private Date departureTime;
    
    private String departureTimeStr;
    /**
     * 订单价格
     */
    private Double orderPrice;
    /**
     * 房间
     */
    private Room room;
    
    private Integer roomId;
    
    public Integer getOid() {
        return oid;
    }
    
    public void setOid(Integer oid) {
        this.oid = oid;
    }
    
    public String getOrderNum() {
        return orderNum;
    }
    
    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }
    
    public Date getOrderTime() {
        return orderTime;
    }
    
    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }
    
    public String getOrderTimeStr() {
        if(orderTime!=null){
            orderTimeStr= DateConvertUtils.date2String(orderTime, "yyyy/MM/dd HH:mm");
        }
        return orderTimeStr;
    }
    
    public void setOrderTimeStr(String orderTimeStr) {
        this.orderTimeStr = orderTimeStr;
    }
    
    public String getCustomer() {
        return customer;
    }
    
    public void setCustomer(String customer) {
        this.customer = customer;
    }
    
    public String getIdCardNum() {
        return idCardNum;
    }
    
    public void setIdCardNum(String idCardNum) {
        this.idCardNum = idCardNum;
    }
    
    public Integer getPhoneNum() {
        return phoneNum;
    }
    
    public void setPhoneNum(Integer phoneNum) {
        this.phoneNum = phoneNum;
    }
    
    public Date getComeTime() {
        return comeTime;
    }
    
    public void setComeTime(Date comeTime) {
        this.comeTime = comeTime;
    }
    
    public String getComeTimeStr() {
        if(comeTime!=null){
            // 时间格式yyyy-MM-dd 不能修改，更新报400
            comeTimeStr= DateConvertUtils.date2String(comeTime, "yyyy/MM/dd");
        }
        return comeTimeStr;
    }
    
    public void setComeTimeStr(String comeTimeStr) {
        this.comeTimeStr = comeTimeStr;
    }
    
    public Date getDepartureTime() {
        return departureTime;
    }
    
    public void setDepartureTime(Date departureTime) {
        this.departureTime = departureTime;
    }
    
    public String getDepartureTimeStr() {
        if(departureTime!=null){
            departureTimeStr= DateConvertUtils.date2String(departureTime, "yyyy/MM/dd");
        }
        return departureTimeStr;
    }
    
    public void setDepartureTimeStr(String departureTimeStr) {
        this.departureTimeStr = departureTimeStr;
    }
    
    public Double getOrderPrice() {
        return orderPrice;
    }
    
    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }
    
    public Room getRoom() {
        return room;
    }
    
    public void setRoom(Room room) {
        this.room = room;
    }
    
    public Integer getRoomId() {
        return roomId;
    }
    
    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}
