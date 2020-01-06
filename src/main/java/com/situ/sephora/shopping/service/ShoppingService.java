package com.situ.sephora.shopping.service;

import java.util.List;

import com.situ.sephora.shopping.domain.Shopping;

public interface ShoppingService {
	Long save(Shopping shopping);
	
	Shopping get(Shopping shopping);
	
	List<Shopping> find(Shopping shopping);
	
	Integer update(Shopping shopping);
	
	Integer del(Long rowId);
}
