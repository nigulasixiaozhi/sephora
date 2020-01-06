package com.situ.sephora.category.service;

import java.util.List;

import com.situ.sephora.category.domain.Category;

public interface CategoryService {

	Long saveProList(Category category);

	Category getByCategory(Category category);

	List<Category> find(Category category);
	
	List<Category> findChild();

	Integer update(Category category);

	Integer del(Long rowId);
}
