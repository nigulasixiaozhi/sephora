package com.situ.sephora.product.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.product.domain.Product;

@Repository
public interface ProductDao {
	Long save(Product product);
	
	Product getByProduct(Product product);
	
	Product getByRowId(Long rowId);
	
	List<Product> find(Product product);
	
	void update(Product product);
	
	void del(Long rowId);
}
