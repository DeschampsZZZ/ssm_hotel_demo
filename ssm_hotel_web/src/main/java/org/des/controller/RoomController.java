package org.des.controller;

import com.github.pagehelper.PageInfo;
import java.nio.charset.Charset;
import java.util.List;
import org.des.domain.Room;
import org.des.domain.RoomCount;
import org.des.domain.SelectDate;
import org.des.service.IRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 16:03 2020/10/05
 */
@Controller
@RequestMapping("/room")
public class RoomController {

    @Autowired
    private IRoomService roomService;
    
    //查询全部房型 模糊查询
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(value = "page",defaultValue = "1")Integer page,
            @RequestParam(value = "size",defaultValue = "4") Integer size,
            @RequestParam(value = "fuzzyName",defaultValue = "",required = false) String fuzzyName) throws Exception{
        ModelAndView mv = new ModelAndView();
        //判断是乱码 (GBK包含全部中文字符；UTF-8则包含全世界所有国家需要用到的字符。)
        if (!(Charset.forName("GBK").newEncoder().canEncode(fuzzyName))) {
            //转码UTF8
            fuzzyName = new String(fuzzyName.getBytes("ISO-8859-1"), "utf-8");
        }
        List<Room> roomList = roomService.findAll(page,size,fuzzyName);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(roomList);
        mv.addObject("roomList",roomList);
        mv.addObject("fuzzyName",fuzzyName);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("room-list");
        return mv;
    }
    
    //根据id查找房间
    @RequestMapping("/findById.do")
    public ModelAndView findById(int roomId){
        ModelAndView mv = new ModelAndView();
        Room room = roomService.findById(roomId);
        mv.addObject("room",room);
        mv.setViewName("room-show");
        return mv;
    }
    
    //根据id查找房间
    @RequestMapping("/findById2.do")
    public ModelAndView findById2(int roomId){
        ModelAndView mv = new ModelAndView();
        Room room = roomService.findById(roomId);
        mv.addObject("room",room);
        mv.setViewName("room-update");
        return mv;
    }
    
    //根据id删除
    @RequestMapping("/deleteById.do")
    @PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_BOSS')")
    public String deleteById(@RequestParam(value = "roomId",required = false) String roomId){
        roomService.deleteById(roomId);
        return "redirect:findAll.do";
    }
    
    //批量删除
    @RequestMapping("/deleteByIdStr.do")
    @PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_BOSS')")
    public String deleteByIdStr(@RequestParam(value = "idStr",defaultValue = "",required = false)String idStr){
        if (idStr != null && idStr != "" && idStr.length()>0){
            String[] ids = idStr.split(",");
            for (String id : ids) {
               // System.out.println(id);
                roomService.deleteById(id);
            }
        }
        return "redirect:findAll.do";
    }
    
    //新建房间保存
    @RequestMapping("/addRoom.do")
    @PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_BOSS')")
    public String addRoom(Room room){
        roomService.addRoom(room);
        return "redirect:findAll.do";
    }
    
    //更新信息
    @RequestMapping("/update.do")
    public String update(Room room){
        roomService.update(room);
        return "redirect:findAll.do";
    }
    
    //查询房型首页信息
    @RequestMapping("/findAllRoom.do")
    public ModelAndView findAllHouse(){
        ModelAndView mv = new ModelAndView();
        //查询全部房间信息
        List<Room> roomList = roomService.findAllRoom();
        mv.addObject("roomList",roomList);
        //查询各种房间状态的数量
        RoomCount roomCount = roomService.findCount();
        mv.addObject("roomCount",roomCount);
        mv.setViewName("orders-room");
        return mv;
    }
    
    //根据房间状态查询
    @RequestMapping("/findByRoomState.do")
    public ModelAndView findByRoomState(String roomState){
        ModelAndView mv = new ModelAndView();
        List<Room> roomList= roomService.findByRoomState(roomState);
        mv.addObject("roomList",roomList);
        RoomCount roomCount = roomService.findCount();
        mv.addObject("roomCount",roomCount);
        mv.setViewName("orders-room");
        return mv;
    }
    
    //根据id查找房间
    @RequestMapping("/getRoomId.do")
    public ModelAndView getRoomId(int roomId){
        ModelAndView mv = new ModelAndView();
        mv.addObject("roomId",roomId);
        mv.setViewName("orders-selectDate");
        return mv;
    }
    
    //根据id查找房间 传递时间
    @RequestMapping("/selectDate.do")
    public ModelAndView selectDate(int roomId, SelectDate selectDate){
        ModelAndView mv = new ModelAndView();
        Room room = roomService.findById(roomId);
        room.setRoomPrice(selectDate.getCount()*room.getRoomPrice());
        mv.addObject("room",room);
        mv.addObject("selectDate",selectDate);
        mv.setViewName("orders-add");
        return mv;
    }
    
    //根据id查找房间
    @RequestMapping("/updateRoomState1.do")
    public String updateRoomState1(int roomId){
       
        roomService.updateRoomState1(roomId);
        return "redirect:/room/findAllRoom.do";
    }
    
    //根据房间型号查找相应房间
    @RequestMapping("/findByRoomType.do")
    public ModelAndView findByRoomType(String roomType){
        ModelAndView mv = new ModelAndView();
        //查询全部房间信息
        List<Room> roomList = roomService.findByRoomType(roomType);
        mv.addObject("roomList",roomList);
        //查询各种房间状态的数量
        RoomCount roomCount = roomService.findCount();
        mv.addObject("roomCount",roomCount);
        mv.setViewName("orders-room");
        return mv;
    }
}
