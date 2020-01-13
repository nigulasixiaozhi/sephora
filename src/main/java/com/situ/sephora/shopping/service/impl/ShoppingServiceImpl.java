package com.situ.sephora.shopping.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.product.dao.ProductDao;
import com.situ.sephora.product.domain.Product;
import com.situ.sephora.shopping.dao.ShoppingDao;
import com.situ.sephora.shopping.domain.Shopping;
import com.situ.sephora.shopping.service.ShoppingService;
import com.situ.sephora.user.domain.User;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.ContextUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class ShoppingServiceImpl implements ShoppingService {
	@Autowired
	private ShoppingDao shoppingDao;
	@Autowired
	private ProductDao productDao;

	@Override
	public Long save(Shopping shopping) {
		Shopping shopping2 = this.shoppingDao.getByProductId(shopping.getProductId());
		if (shopping2 != null) {
			shopping2.setPayCount(shopping2.getPayCount() + shopping.getPayCount());
			this.update(shopping2);
			return 1L;
		} else {
			Product product = this.productDao.getByRowId(shopping.getProductId());
			if (product != null) {
				shopping.setSumPrice(product.getProductPrice() * shopping.getPayCount());
			}
			shopping.setChecked(1);
			shopping.setActiveFlag(1);
			shopping.setCreateBy(ConfigUtils.SESSION_USER_LOGIN);
			shopping.setCreateDate(new Date());
			return this.shoppingDao.save(shopping);
		}

	}

	@Override
	public Shopping get(Long rowId) {
		Shopping shopping = this.shoppingDao.get(rowId);
		if (shopping != null) {
			User user = ContextUtils.getLoginUser();
			if (user != null) {
				Shopping checkedShopping = this.shoppingDao.getChecekdPriceAndCount(user.getRowId());
				if (checkedShopping != null) {
					shopping.setCheckedPrice(checkedShopping.getCheckedPrice());
					shopping.setCheckedCount(checkedShopping.getCheckedCount());
				}
			}
		}
		return shopping;
	}

	@Override
	public Shopping checekdPriceAndCount() {
		User user = ContextUtils.getLoginUser();
		if (user != null) {
			return this.shoppingDao.getChecekdPriceAndCount(user.getRowId());
		} else {
			return null;
		}
	}

	@Override
	public List<Shopping> find() {
		User user = ContextUtils.getLoginUser();
		if (user != null) {
			return this.shoppingDao.find(user.getRowId());
		} else {
			return null;
		}

	}
	
	@Override
	public List<Shopping> findByChecked() {
		User user = ContextUtils.getLoginUser();
		if (user != null) {
			return this.shoppingDao.findByChecked(user.getRowId());
		} else {
			return null;
		}
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

	@Override
	public Integer del(List<Long> shoppingId) {
		for (Long id : shoppingId) {
			this.shoppingDao.del(id);
		}
		return 1;
	}

}
