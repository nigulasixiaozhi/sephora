package com.situ.sephora.orderlist.service;

import java.util.List;

import com.situ.sephora.orderlist.domain.OrderList;

public interface OrderListService {
	Long save(OrderList orderList);
	
	Integer update(OrderList orderList);
	
	Integer del(Long rowId);
	
	OrderList getByOrderList(OrderList orderList);
	
	List<OrderList> find(OrderList orderList);
}
