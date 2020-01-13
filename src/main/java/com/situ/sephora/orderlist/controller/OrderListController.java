package com.situ.sephora.orderlist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.orderlist.domain.OrderList;
import com.situ.sephora.orderlist.service.OrderListService;

@Controller
@RequestMapping("/orderList")
public class OrderListController {
	@Autowired
	private OrderListService orderListService;
	
	@ResponseBody
	@RequestMapping("/add")
	public Long addOrderList(Long orderId, @RequestParam("shoppingId[]") List<Long> shoppingId) {
		return this.orderListService.save(orderId,shoppingId);
	}
	
	@ResponseBody
	@RequestMapping("/del")
	public Integer DelOrderList(Long rowId) {
		return this.orderListService.del(rowId);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Integer UpdateOrderList(OrderList orderList) {
		return this.orderListService.update(orderList);
	}
}
