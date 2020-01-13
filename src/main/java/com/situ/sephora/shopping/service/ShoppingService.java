package com.situ.sephora.shopping.service;

import java.util.List;

import com.situ.sephora.shopping.domain.Shopping;

public interface ShoppingService {
	
	/**
	 * 保存
	 * @param shopping
	 * @return
	 */
	Long save(Shopping shopping);
	
	/**
	 * 获取
	 * @param rowId
	 * @return
	 */
	Shopping get(Long rowId);
	
	/**
	 * 获取选中的总价和总数量
	 * @return
	 */
	Shopping checekdPriceAndCount();
	
	/**
	 * 获取当前用户所有的数据
	 * @return
	 */
	List<Shopping> find();
	
	/**
	 * 通过选中的状态来获取数据
	 * @return
	 */
	List<Shopping> findByChecked();
	/**
	 * 更新
	 * @param shopping
	 * @return
	 */
	Integer update(Shopping shopping);
	/**
	 * 更新当前用户所有的购物车选中状态
	 * @param checked
	 * @param userId
	 * @return
	 */
	Integer updateChecked(Integer checked,Long userId);
	/**
	 * 删除
	 * @param rowId
	 * @return
	 */
	Integer del(Long rowId);
	/**
	 * 批量删除
	 * @param shoppingId
	 * @return
	 */
	Integer del(List<Long> shoppingId);
}
