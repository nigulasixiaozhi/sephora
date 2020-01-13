package com.situ.sephora.shopping.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		Shopping shopping2 = this.shoppingDao.getByProductId(shopping.getProductId());//通过商品id得到购物车对象
		if (shopping2 != null) {//如果不为空则以存在该商品的购物车，将购买数量相加
			shopping2.setPayCount(shopping2.getPayCount() + shopping.getPayCount());
			this.update(shopping2);//执行更新
			return 1L;
		} else {//如果为空则不存在该商品的购物车
			Product product = this.productDao.getByRowId(shopping.getProductId());//通过商品id得到商品对象
			if (product != null) {
				shopping.setSumPrice(product.getProductPrice() * shopping.getPayCount());//给总价赋值
			}
			shopping.setChecked(1);
			shopping.setActiveFlag(1);
			shopping.setCreateBy(ConfigUtils.SESSION_USER_LOGIN);
			shopping.setCreateDate(new Date());
			return this.shoppingDao.save(shopping);//执行保存
		}

	}

	@Override
	public Shopping get(Long rowId) {
		Shopping shopping = this.shoppingDao.get(rowId);//根据id查找到当前对象
		if (shopping != null) {
			User user = ContextUtils.getLoginUser();//得到当前用户对象
			if (user != null) {
				Shopping checkedShopping = this.shoppingDao.getChecekdPriceAndCount(user.getRowId());//得到当前用户选中商品的数量总和和总价
				if (checkedShopping != null) {
					shopping.setCheckedPrice(checkedShopping.getCheckedPrice());//赋值给查找出来的对象
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
			return this.shoppingDao.getChecekdPriceAndCount(user.getRowId());//得到当前用户选中商品的数量总和和总价
		} else {
			return null;
		}
	}

	@Override
	public List<Shopping> find() {
		User user = ContextUtils.getLoginUser();
		if (user != null) {
			return this.shoppingDao.find(user.getRowId());//得到当前用户的总数据
		} else {
			return null;
		}

	}
	
	@Override
	public List<Shopping> findByChecked() {
		User user = ContextUtils.getLoginUser();
		if (user != null) {
			return this.shoppingDao.findByChecked(user.getRowId());//得到当前用户选中的总数据
		} else {
			return null;
		}
	}

	@Override
	public Integer update(Shopping shopping) {//更新
		shopping.setUpdateBy(ConfigUtils.SESSION_USER_LOGIN);
		shopping.setUpdateDate(new Date());
		shopping = PageUtils.buildSearchParam(shopping);
		this.shoppingDao.update(shopping);
		return 1;
	}

	@Override
	public Integer updateChecked(Integer checked, Long userId) {//更新选中状态
		this.shoppingDao.updateChecked(checked, userId);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {//删除
		this.shoppingDao.del(rowId);
		return 1;
	}

	@Override
	public Integer del(List<Long> shoppingId) {//批量删除
		for (Long id : shoppingId) {
			Shopping shopping = this.shoppingDao.get(id);
			//订单提交后删除购物车数据，并将产品库存减相应的数值
			this.productDao.updateInventory(shopping.getPayCount(), shopping.getProductId());
			this.shoppingDao.del(id);
		}
		return 1;
	}

}
