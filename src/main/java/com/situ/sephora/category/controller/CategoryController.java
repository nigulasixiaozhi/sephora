package com.situ.sephora.category.controller;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.category.domain.Category;
import com.situ.sephora.category.service.CategoryService;

@Controller
public class CategoryController implements Serializable{
	private static final long serialVersionUID = 1L;
	@Autowired
	private CategoryService categoryService;
	
	@ResponseBody
	@RequestMapping("/goFindCategory")
	public List<Category> category(Category category){
		return this.categoryService.find(category);
	}
	
	@ResponseBody
	@RequestMapping(path = {"admin/goGetCategory","admin/goCategoryUpdate"})
	public Category getCategory(Category category){
		return this.categoryService.getByCategory(category);
	}
	
	@ResponseBody
	@RequestMapping("admin/doUpdateCategory")
	public Integer update(Category category) {
		return this.categoryService.update(category);
	}
	
	@ResponseBody
	@RequestMapping("admin/doAddCategory")
	public Long add(Category category) {
		return this.categoryService.saveProList(category);
	}
	
	@ResponseBody
	@RequestMapping("admin/doDelCategory")
	public Integer del(Long rowId) {
		return this.categoryService.del(rowId);
	}
	
}
