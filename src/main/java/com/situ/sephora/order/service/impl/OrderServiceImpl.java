package com.situ.sephora.order.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.order.dao.OrderDao;
import com.situ.sephora.order.domain.Order;
import com.situ.sephora.order.service.OrderService;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;

	@Override
	public Long save(Order order) {
		order.setActiveFlag(1);
		order.setCreateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		order.setCreateDate(new Date());
		return this.orderDao.save(order);
	}

	@Override
	public Order getByOrder(Order order) {
		order = PageUtils.buildSearchParam(order);
		return this.orderDao.getByOrder(order);
	}

	@Override
	public List<Order> findByOrder(Order order) {
		order = PageUtils.buildSearchParam(order);
		return this.orderDao.findByOrder(order);
	}
	
	@Override
	public List<Order> findByUserId(Long userId) {
		return this.orderDao.findByUserId(userId);
	}

	@Override
	public Integer update(Order order) {
		order = PageUtils.buildSearchParam(order);
		this.orderDao.update(order);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {
		this.orderDao.del(rowId);
		return 1;
	}

}
