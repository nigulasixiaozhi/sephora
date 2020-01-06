package com.situ.sephora.category.domain;

import java.util.List;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;

@Alias("category")
public class Category extends BaseClass {
	private static final long serialVersionUID = 1L;
	private Long parId;//父ID
	private String listName;//目录名字
	private String listInfo;//目录简介
	private Long orderNum;//排序
	
	//额外的属性
	private List<Category> childList;
	
	
	public List<Category> getChildList() {
		return childList;
	}
	public void setChildList(List<Category> childList) {
		this.childList = childList;
	}
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public String getListInfo() {
		return listInfo;
	}
	public void setListInfo(String listInfo) {
		this.listInfo = listInfo;
	}
	public Long getParId() {
		return parId;
	}
	public void setParId(Long parId) {
		this.parId = parId;
	}
	public String getListName() {
		return listName;
	}
	public void setListName(String listName) {
		this.listName = listName;
	}
	
}
