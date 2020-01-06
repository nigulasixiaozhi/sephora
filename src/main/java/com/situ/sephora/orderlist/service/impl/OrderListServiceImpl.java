package com.situ.sephora.orderlist.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.orderlist.dao.OrderListDao;
import com.situ.sephora.orderlist.domain.OrderList;
import com.situ.sephora.orderlist.service.OrderListService;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class OrderListServiceImpl implements OrderListService{
	@Autowired
	private OrderListDao orderListDao;

	@Override
	public Long save(OrderList orderList) {
		orderList.setActiveFlag(1);
		orderList.setCreateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		orderList.setCreateDate(new Date());
		return this.orderListDao.save(orderList);
	}

	@Override
	public Integer update(OrderList orderList) {
		orderList.setUpdateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		orderList.setUpdateDate(new Date());
		orderList = PageUtils.buildSearchParam(orderList);
		this.orderListDao.update(orderList);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {
		this.orderListDao.del(rowId);
		return 1;
	}

	@Override
	public OrderList getByOrderList(OrderList orderList) {
		orderList = PageUtils.buildSearchParam(orderList);
		return this.orderListDao.getByOrderList(orderList);
	}

	@Override
	public List<OrderList> find(OrderList orderList) {
			orderList = PageUtils.buildSearchParam(orderList);
			return this.orderListDao.find(orderList);
	}
	
	
}
