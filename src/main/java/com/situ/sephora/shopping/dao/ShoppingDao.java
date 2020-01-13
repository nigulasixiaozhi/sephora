package com.situ.sephora.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.sephora.shopping.domain.Shopping;

@Repository
public interface ShoppingDao {
	
	Long save(Shopping shopping);//保存
	
	Shopping get(Long rowId);//获取
	
	Shopping getByProductId(Long productId);//通过产品id获取
	
	Shopping getChecekdPriceAndCount(Long userId);//获取用户选中商品的总价和总数量
	
	List<Shopping> find(Long userId);//发现用户所有的购物车数据
	
	List<Shopping> findByChecked(Long userId);//通过选中状态获取
	
	void update(Shopping shopping);//更新
	
	//更新选中状态
	void updateChecked(@Param("checked") Integer checked,@Param("userId") Long userId);
	
	void del(Long rowId);//删除

}
