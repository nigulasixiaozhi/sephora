package com.situ.sephora.address.domain;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;
@Alias("address")
public class Address extends BaseClass{
	private static final long serialVersionUID = 1L;
	private Long userId;//用户ID
	private String addressName;//收货时的名字
	private Integer province;//省代号
	private Integer city;//市代号
	private Integer district;//区代号
	private String detailedAddress;//详细地址
	private String addressPhone;//收货电话
	private String postcode;//邮编
	private Integer isDefault; //是否默认 1为默认0不是默认
	//额外的
	private String userName;//用户名称
	private String addressPcd;//省市区
	private Long areaCode;//地区代号
	private String areaName;//地区名字
	
	
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public Long getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(Long areaCode) {
		this.areaCode = areaCode;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddressPcd() {
		return addressPcd;
	}
	public void setAddressPcd(String addressPcd) {
		this.addressPcd = addressPcd;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
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
	public Integer getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(Integer isDefault) {
		this.isDefault = isDefault;
	}
	
}
