package com.situ.sephora.orderlist.domain;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;

@Alias("orderList")
public class OrderList extends BaseClass {
	private static final long serialVersionUID = 1L;
	private Long orderId;//订单ID
	private Long productId;//商品ID
	private Integer buyCount;//购买数量
	private Double sumPrice;//商品总价
	//额外的属性
	private String productName;//商品名称
	private String brandName;//商品品牌
	private Double productPrice;//商品价格
	private String imgPath;//图片路径
	
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
	public Double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public Integer getBuyCount() {
		return buyCount;
	}
	public void setBuyCount(Integer buyCount) {
		this.buyCount = buyCount;
	}
	public Double getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(Double sumPrice) {
		this.sumPrice = sumPrice;
	}
	
}
