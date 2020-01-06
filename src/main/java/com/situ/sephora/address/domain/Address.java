package com.situ.sephora.address.domain;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;
@Alias("address")
public class Address extends BaseClass{
	private static final long serialVersionUID = 1L;
	private Long userId;//用户ID
	private Integer province;//省代号
	private Integer city;//市代号
	private Integer district;//区代号
	private String detailedAddress;//详细地址
	private String addressPhone;//收货电话
	private String postcode;//邮编
	private String userName;//用户名称
	
	private String areaName;//省市区
	
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public Integer getProvince() {
		return province;
	}
	public void setProvince(Integer province) {
		this.province = province;
	}
	public Integer getCity() {
		return city;
	}
	public void setCity(Integer city) {
		this.city = city;
	}
	public Integer getDistrict() {
		return district;
	}
	public void setDistrict(Integer district) {
		this.district = district;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public String getAddressPhone() {
		return addressPhone;
	}
	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	
}
