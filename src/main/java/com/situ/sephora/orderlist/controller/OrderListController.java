package com.situ.sephora.orderlist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.orderlist.domain.OrderList;
import com.situ.sephora.orderlist.service.OrderListService;

@Controller
public class OrderListController {
	@Autowired
	private OrderListService orderListService;
	
	@ResponseBody
	@RequestMapping("/doAddOrderList")
	public Long addOrderList(OrderList orderList) {
		return this.orderListService.save(orderList);
	}
	
	@ResponseBody
	@RequestMapping("/doDelOrderList")
	public Integer DelOrderList(Long rowId) {
		return this.orderListService.del(rowId);
	}
	
	@ResponseBody
	@RequestMapping("/doUpdateOrderList")
	public Integer UpdateOrderList(OrderList orderList) {
		return this.orderListService.update(orderList);
	}
}
