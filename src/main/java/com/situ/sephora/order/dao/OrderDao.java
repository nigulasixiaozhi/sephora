package com.situ.sephora.order.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.order.domain.Order;

@Repository
public interface OrderDao {
	Order getByOrder(Order order);
	
	List<Order> findByOrder(Order order);
	
	List<Order> findByUserId(Long userId);
	
	Long save(Order order);
	
	void del(Long rowId);
	
	void update(Order order);
}
