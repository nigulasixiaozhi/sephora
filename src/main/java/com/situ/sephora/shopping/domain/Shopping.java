package com.situ.sephora.shopping.domain;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;

@Alias("shopping")
public class Shopping extends BaseClass{
	private static final long serialVersionUID = 1L;
	private Long UserId;//用户id
	private Long productId;//商品id
	private Integer payCount;//购买数量
	private Double sumPrice;//总价
	public Long getUserId() {
		return UserId;
	}
	public void setUserId(Long userId) {
		UserId = userId;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public Integer getPayCount() {
		return payCount;
	}
	public void setPayCount(Integer payCount) {
		this.payCount = payCount;
	}
	public Double getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(Double sumPrice) {
		this.sumPrice = sumPrice;
	}
}
