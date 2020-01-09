package com.situ.sephora.shopping.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.shopping.dao.ShoppingDao;
import com.situ.sephora.shopping.domain.Shopping;
import com.situ.sephora.shopping.service.ShoppingService;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class ShoppingServiceImpl implements ShoppingService {
	@Autowired
	private ShoppingDao shoppingDao;

	@Override
	public Long save(Shopping shopping) {
		shopping.setChecked(1);
		shopping.setActiveFlag(1);
		shopping.setCreateBy(ConfigUtils.SESSION_USER_LOGIN);
		shopping.setCreateDate(new Date());
		return this.shoppingDao.save(shopping);
	}

	@Override
	public Shopping get(Long rowId) {
		Shopping shopping= this.shoppingDao.get(rowId);
		if(shopping!=null) {
			Shopping checkedShopping = this.shoppingDao.getChecekdPriceAndCount();
			if (checkedShopping!=null) {
				shopping.setCheckedPrice(checkedShopping.getCheckedPrice());
				shopping.setCheckedCount(checkedShopping.getCheckedCount());
			}
		}
		return shopping;
	}
	
	@Override
	public Shopping checekdPriceAndCount() {
		return this.shoppingDao.getChecekdPriceAndCount();
	}
	
	@Override
	public List<Shopping> find(Shopping shopping) {
		shopping = PageUtils.buildSearchParam(shopping);
		return this.shoppingDao.find(shopping);
	}

	@Override
	public Integer update(Shopping shopping) {
		shopping.setUpdateBy(ConfigUtils.SESSION_USER_LOGIN);
		shopping.setUpdateDate(new Date());
		shopping = PageUtils.buildSearchParam(shopping);
		this.shoppingDao.update(shopping);
		return 1;
	}
	
	@Override
	public Integer updateChecked(Integer checked, Long userId) {
		this.shoppingDao.updateChecked(checked, userId);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {
		this.shoppingDao.del(rowId);
		return 1;
	}

}
