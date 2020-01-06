package com.situ.sephora.user.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.situ.sephora.base.domain.BaseClass;
@Alias("user")
public class User extends BaseClass{
	private static final long serialVersionUID = 1L;
	public static final int USER_KIND_ADMIN = 1;
	public static final int USER_KIND_SHOP = 2;
	public static final int USER_LOCK_YES = 1;
	public static final int USER_LOCK_NO = 0;
	private Integer userKind;//用户类型
	private String userName;//用户名字
	private String userCode;//用户账号
	private String userPass;//用户密码·
	private String userPhone;//用户手机
	private Integer lockFlag;//是否锁定
	private String lastLoginIP;//最后登录IP
	private Date lastLoginDate;//最后登录时间
	public Integer getUserKind() {
		return userKind;
	}
	public void setUserKind(Integer userKind) {
		this.userKind = userKind;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public Integer getLockFlag() {
		return lockFlag;
	}
	public void setLockFlag(Integer lockFlag) {
		this.lockFlag = lockFlag;
	}
	
	public Date getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public String getLastLoginIP() {
		return lastLoginIP;
	}
	public void setLastLoginIP(String lastLoginIP) {
		this.lastLoginIP = lastLoginIP;
	}
	
}
