package com.situ.sephora.orderlist.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.orderlist.domain.OrderList;

@Repository
public interface OrderListDao {
	
	OrderList getByOrderList(OrderList orderList);
	
	List<OrderList> find(OrderList orderList);
	
	Long save(OrderList orderList);
	
	void update(OrderList orderList);
	
	void del(Long rowId);

}
