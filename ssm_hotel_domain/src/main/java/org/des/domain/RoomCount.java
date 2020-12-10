package org.des.domain;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 13:19 2020/10/21
 */
public class RoomCount {
    
    /**
     * 全部房间数量
     */
    private Integer allRoomCount;
    /**
     * 空闲的房间数量
     */
    private Integer vacantCount;
    /**
     * 住人的数量
     */
    private Integer peopleCount;
    
    public Integer getAllRoomCount() {
        return allRoomCount;
    }
    
    public void setAllRoomCount(Integer allRoomCount) {
        this.allRoomCount = allRoomCount;
    }
    
    public Integer getVacantCount() {
        return vacantCount;
    }
    
    public void setVacantCount(Integer vacantCount) {
        this.vacantCount = vacantCount;
    }
    
    public Integer getPeopleCount() {
        return peopleCount;
    }
    
    public void setPeopleCount(Integer peopleCount) {
        this.peopleCount = peopleCount;
    }
}
