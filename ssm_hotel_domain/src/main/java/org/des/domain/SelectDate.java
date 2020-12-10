package org.des.domain;

import java.util.Date;
import org.des.utils.DateConvertUtils;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 20:25 2020/10/21
 */
public class SelectDate {
  
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
     * 计算几晚上
     */
    private long count;
    
    public Date getComeTime() {
        return comeTime;
    }
    
    public void setComeTime(Date comeTime) {
        this.comeTime = comeTime;
    }
    
    public String getComeTimeStr() {
        if(comeTime!=null){
            comeTimeStr= DateConvertUtils.date2String(comeTime, "yyyy-MM-dd");
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
            departureTimeStr= DateConvertUtils.date2String(departureTime, "yyyy-MM-dd");
        }
        return departureTimeStr;
    }
    
    public void setDepartureTimeStr(String departureTimeStr) {
        this.departureTimeStr = departureTimeStr;
    }
    
    public long getCount() {
        count = (departureTime.getTime()- comeTime.getTime())/(24*60*60*1000);
        return count;
    }
    
    public void setCount(long count) {
        this.count = count;
    }
}
