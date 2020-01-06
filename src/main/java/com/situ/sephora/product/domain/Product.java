package com.situ.sephora.product.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.sephora.base.domain.BaseClass;

@Alias("product")
public class Product extends BaseClass{
	private static final long serialVersionUID = 1L;
	private Long categoryId;//商品目录ID
	private String productName;//商品名字
	private String brandName;//品牌名字
	private String imgPath;//图片路径
	private Double productPrice;//商品价格
	private Integer inventory;//库存
	private Integer goOutFlag;//商品上下架状态
	private String productInfo;//商品信息
	//额外的属性
	private String listName; //商品目录名字
	//在Spring-mvc.xml中配置的CommonsMultipartResolver会将提交的二进制文件封装成 CommonsMultipartFile
	private CommonsMultipartFile imgFile;//上传图片文件
	
	public CommonsMultipartFile getImgFile() {
		return imgFile;
	}
	public void setImgFile(CommonsMultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public String getListName() {
		return listName;
	}
	public void setListName(String listName) {
		this.listName = listName;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public Double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getInventory() {
		return inventory;
	}
	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}
	public Integer getGoOutFlag() {
		return goOutFlag;
	}
	public void setGoOutFlag(Integer goOutFlag) {
		this.goOutFlag = goOutFlag;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	
}
