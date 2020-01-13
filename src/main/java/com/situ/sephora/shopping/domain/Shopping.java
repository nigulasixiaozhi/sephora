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
	private Integer checked;//是否选中
	//额外的属性
	private String productName;//商品名称
	private String imgPath;//商品图片路径
	private String brandName;//品牌名称
	private Double productPrice;//商品价格
	private Integer checkedCount;//选中商品的总数量;
	private Double checkedPrice;//选中商品的总价格
	
	
	public Integer getCheckedCount() {
		return checkedCount;
	}
	public void setCheckedCount(Integer checkedCount) {
		this.checkedCount = checkedCount;
	}
	public Double getCheckedPrice() {
		return checkedPrice;
	}
	public void setCheckedPrice(Double checkedPrice) {
		this.checkedPrice = checkedPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
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
	public Integer getChecked() {
		return checked;
	}
	public void setChecked(Integer checked) {
		this.checked = checked;
	}
	
}
