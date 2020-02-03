package com.situ.sephora.order.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.sephora.order.domain.Order;
import com.situ.sephora.utils.PageUtils;

@Repository
public interface OrderDao {
	Order getByOrder(Order order);
	
	List<Order> findByOrder(Order order);
	
	List<Order> findByUserId(@Param("userId")Long userId,@Param("pageCurrent")Integer pageCurrent,@Param("pageRows") Integer pageRows);
	
	Long save(Order order);
	
	void del(Long rowId);
	
	void update(Order order);
}
