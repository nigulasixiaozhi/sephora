package com.situ.sephora.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.sephora.shopping.domain.Shopping;

@Repository
public interface ShoppingDao {
	
	Long save(Shopping shopping);
	
	Shopping get(Long rowId);
	
	Shopping getChecekdPriceAndCount();
	
	List<Shopping> find(Shopping shopping);
	
	void update(Shopping shopping);
	
	void updateChecked(@Param("checked") Integer checked,@Param("userId") Long userId);
	
	void del(Long rowId);

}
