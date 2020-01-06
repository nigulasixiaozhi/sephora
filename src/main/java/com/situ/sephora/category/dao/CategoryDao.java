package com.situ.sephora.category.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.category.domain.Category;

@Repository
public interface CategoryDao {
	
	Long saveCategory(Category category);
	
	Category getByCategory(Category category);
	
	List<Category> find(Category category);
	
	List<Category> findByParId(Long parId);
	
	void update(Category category);
	
	void del(Long rowId);
	
	Category getByParId(Long parId);
	
	void updateOrderNum(Long orderNum);
	
	Long selectMaxOrderNum();
}
