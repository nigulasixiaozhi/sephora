package com.situ.sephora.category.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.category.dao.CategoryDao;
import com.situ.sephora.category.domain.Category;
import com.situ.sephora.category.service.CategoryService;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;

	@Override
	public Long saveProList(Category category) {
		OrderNum(category);
		category.setActiveFlag(1);
		category.setCreateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		category.setCreateDate(new Date());
		return this.categoryDao.saveCategory(category);
	}

	@Override
	public Category getByCategory(Category category) {
		if (category != null) {
			category = PageUtils.buildSearchParam(category);
			return this.categoryDao.getByCategory(category);
		}
		return null;
	}

	@Override
	public List<Category> find(Category category) {
		category = PageUtils.buildSearchParam(category);
		return this.categoryDao.find(category);
	}

	@Override
	public List<Category> findChild() {
		List<Category> categoryList = this.categoryDao.find(null);
		List<Category> childList = new ArrayList<Category>();
		List<Category> categoryLevel1 = new ArrayList<Category>();
		for (Category category : categoryList) {//循环所有分类
			if (category.getParId() == -1) {//如果当前为一级分类
				//将当前分类的二级分类插入
				category.setChildList(this.categoryDao.findByParId(category.getRowId()));
				categoryLevel1.add(category);//添加到新数组
				childList = category.getChildList();
				if (childList != null) {//如果二级分类不为空
					for (Category child : childList) {
						//将三级分类插入二级分类数组中
						child.setChildList(this.categoryDao.findByParId(child.getRowId()));
					}
				}
			}
		}
		return categoryLevel1;
	}

	@Override
	public Integer update(Category category) {
		OrderNum(category);
		category.setUpdateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		category.setUpdateDate(new Date());
		this.categoryDao.update(category);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {
		this.categoryDao.del(rowId);
		return 1;
	}

	private void OrderNum(Category category) {
		Long parId = category.getParId();
		if (parId != -1) {
			Long orderNum = this.categoryDao.getByParId(parId).getOrderNum();
			category.setOrderNum(orderNum + 1);
			this.categoryDao.updateOrderNum(orderNum);
		} else {
			Long orderNum = this.categoryDao.selectMaxOrderNum();
			category.setOrderNum(orderNum + 1);
		}
	}

}
