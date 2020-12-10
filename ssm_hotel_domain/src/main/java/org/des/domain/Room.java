package org.des.domain;

/**
 * @Author: Des
 * @Description: 房间
 * @Date: Created in 16:51 2020/09/29
 */
public class Room {
    
    /**
     * 房间id
     */
    private Integer roomId;
    /**
     * 房间类型
     */
    private String roomType;
    /**
     * 房间状态
     */
    private String roomState;
    /**
     * 房间单价
     */
    private Double roomPrice;
    /**
     * 房间号
     */
    private Integer roomNumber;
    
    public Integer getRoomId() {
        return roomId;
    }
    
    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
    
    public String getRoomType() {
        return roomType;
    }
    
    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }
    
    public String getRoomState() {
        return roomState;
    }
    
    public void setRoomState(String roomState) {
        this.roomState = roomState;
    }
    
    public Double getRoomPrice() {
        return roomPrice;
    }
    
    public void setRoomPrice(Double roomPrice) {
        this.roomPrice = roomPrice;
    }
    
    public Integer getRoomNumber() {
        return roomNumber;
    }
    
    public void setRoomNumber(Integer roomNumber) {
        this.roomNumber = roomNumber;
    }
}
