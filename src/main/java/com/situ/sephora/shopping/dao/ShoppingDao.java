package com.situ.sephora.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.sephora.shopping.domain.Shopping;

@Repository
public interface ShoppingDao {
	
	Long save(Shopping shopping);
	
	Shopping get(Long rowId);
	
	Shopping getByProductId(Long productId);
	
	Shopping getChecekdPriceAndCount(Long userId);
	
	List<Shopping> find(Long userId);
	
	List<Shopping> findByChecked(Long userId);
	
	void update(Shopping shopping);
	
	void updateChecked(@Param("checked") Integer checked,@Param("userId") Long userId);
	
	void del(Long rowId);

}
