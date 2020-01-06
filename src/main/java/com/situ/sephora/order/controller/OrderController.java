package com.situ.sephora.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.situ.sephora.order.dao.OrderDao;
import com.situ.sephora.order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
}
