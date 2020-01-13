package com.situ.sephora.product.service;

import java.util.List;

import com.situ.sephora.product.domain.Product;

public interface ProductService {
	
	Long save(Product product,String realPath);
	
	Product getByProduct(Product product);
	
	Product getByRowId(Long rowId);
	
	List<Product> find(Product product);
	
	List<Product> findByGoOutFlag();
	
	List<Product> findByCategory(Long categoryId);
	
	List<Product> findCategory();
	
	Integer update(Product product,String realPath);
	
	Integer del(Long rowId);
}
