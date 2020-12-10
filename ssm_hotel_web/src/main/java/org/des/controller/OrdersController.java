package org.des.controller;

import com.github.pagehelper.PageInfo;
import java.util.Date;
import java.util.List;
import org.des.domain.Orders;
import org.des.service.IOrdersService;
import org.des.utils.DateConvertUtils;
import org.des.utils.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: Des
 * @Description:
 * @Date: Created in 20:56 2020/10/18
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
    
    @Autowired
    private IOrdersService ordersService;
    
    // 查找订单
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(value = "page",defaultValue = "1")Integer page,
            @RequestParam(value = "size",defaultValue = "4") Integer size,
            @RequestParam(value = "fuzzyName",defaultValue = "",required = false) String fuzzyName)  throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Orders> ordersList = ordersService.findAll(page, size, fuzzyName);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(ordersList);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("ordersList",ordersList);
        mv.addObject("fuzzyName",fuzzyName);
        mv.setViewName("orders-list");
        return mv;
    }
    
    //根据id查找订单
    @RequestMapping("/findById.do")
    public ModelAndView findById(int oid){
        ModelAndView mv = new ModelAndView();
        Orders orders = ordersService.findById(oid);
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;
    }
    
    //更新信息
    @RequestMapping("/update.do")
    public String update(Orders orders){
        ordersService.update(orders);
        return "redirect:findAll.do";
    }
    //新建订单
    @RequestMapping("/addOrder.do")
    public String addOrder(Orders orders){
        orders.setOrderNum(DateConvertUtils.date2String(new Date(), "yyyyMMdd") + RandomStringUtils
                .getNewRandomCode(5));
        orders.setOrderTime(new Date());
        ordersService.addOrder(orders);
        return "redirect:/room/findAllRoom.do";
    }
    
    //根据id删除
    @RequestMapping("/deleteById.do")
    @PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_BOSS')")
    public String deleteById(@RequestParam(value = "oid",required = false) String oid){
        ordersService.deleteById(oid);
        return "redirect:findAll.do";
    }
    
}
