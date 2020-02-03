package com.situ.sephora.order.domain;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;

@Alias("order")
public class Order extends BaseClass{
	private static final long serialVersionUID = 1L;
	private Long UserId;//用户ID
	private Long addressId;//地址ID
	private Double sumPrice;//总价
	private Integer orderStatus;//订单状态 1：待发货 2：已发货 3：已签收 4:未付款 0：已取消 
	private Integer pay;//支付方式 1：微信 2：支付宝 3：银行卡 0 未支付
	//额外的名称
	private String userName;//用户名称
	private String addressName;//收货地址名称
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public Long getUserId() {
		return UserId;
	}
	public void setUserId(Long userId) {
		UserId = userId;
	}
	public Long getAddressId() {
		return addressId;
	}
	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}
	public Double getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(Double sumPrice) {
		this.sumPrice = sumPrice;
	}
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Integer getPay() {
		return pay;
	}
	public void setPay(Integer pay) {
		this.pay = pay;
	}
	
}
