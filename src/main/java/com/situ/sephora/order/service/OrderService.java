package com.situ.sephora.order.service;

import java.util.List;

import com.situ.sephora.order.domain.Order;

public interface OrderService {
	Long save(Long addressId);
	
	Order getByOrder(Order order);
	
	List<Order> findByOrder(Order order);
	
	List<Order> findByUserId(Long userId);
	
	Integer update(Order order);
	
	Integer del(Long rowId);
}
