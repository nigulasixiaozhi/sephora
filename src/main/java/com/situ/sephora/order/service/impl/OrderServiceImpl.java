package com.situ.sephora.order.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.order.dao.OrderDao;
import com.situ.sephora.order.domain.Order;
import com.situ.sephora.order.service.OrderService;
import com.situ.sephora.shopping.dao.ShoppingDao;
import com.situ.sephora.shopping.domain.Shopping;
import com.situ.sephora.user.domain.User;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.ContextUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	@Autowired
	private ShoppingDao shoppingDao;

	@Override
	public Long save(Long addressId) {
		Order order = new Order();
		User user = ContextUtils.getLoginUser();
		if(user!=null) {
			order.setUserId(user.getRowId());
			Shopping shopping = this.shoppingDao.getChecekdPriceAndCount(user.getRowId());
			if(shopping!=null&&shopping.getCheckedPrice()!=null) {
				order.setSumPrice(shopping.getCheckedPrice());
			}
		}
		order.setAddressId(addressId);
		order.setOrderStatus(4);
		order.setPay(0);
		order.setActiveFlag(1);
		order.setCreateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		order.setCreateDate(new Date());
		 this.orderDao.save(order);
		return order.getRowId();
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
	public List<Order> findByUserId(Long userId,Integer pageCurrent) {
		if(pageCurrent!=null) {
			if(pageCurrent==1) {
				pageCurrent = pageCurrent-1;
			}else if (pageCurrent>1) {
				pageCurrent = (pageCurrent-1)*PageUtils.PAGE_ROWS;
			}
		}
		
		return this.orderDao.findByUserId(userId,pageCurrent,PageUtils.PAGE_ROWS);
	}

	@Override
	public Integer update(Order order) {
		order.setUpdateBy(ConfigUtils.SESSION_USER_LOGIN);
		order.setUpdateDate(new Date());
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
