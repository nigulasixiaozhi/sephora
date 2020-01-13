package com.situ.sephora.product.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.sephora.product.domain.Product;

@Repository
public interface ProductDao {
	Long save(Product product);
	
	Product getByProduct(Product product);
	
	Product getByRowId(Long rowId);
	
	List<Product> find(Product product);
	
	List<Product> findByGoOutFlag();
	
	List<Product> findByCategory(Long categoryId);
	
	void update(Product product);
	
	void updateInventory(@Param("inventory")Integer inventory,@Param("rowId") Long rowId);
	
	void del(Long rowId);
}
