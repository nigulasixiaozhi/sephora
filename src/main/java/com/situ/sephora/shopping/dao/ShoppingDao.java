package com.situ.sephora.shopping.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.shopping.domain.Shopping;

@Repository
public interface ShoppingDao {
	
	Long save(Shopping shopping);
	
	Shopping get(Shopping shopping);
	
	List<Shopping> find(Shopping shopping);
	
	void update(Shopping shopping);
	
	void del(Long rowId);

}
