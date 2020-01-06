package com.situ.sephora.utils;


import java.io.Serializable;

/**
 * 系统配置信息
 * 
 * @author wxinpeng
 *
 */
public class ConfigUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	// 用户登录-session object 名称
	public static final String SESSION_USER_LOGIN = "userLogin";
	// 管理员登录-session object 名称
	public static final String SESSION_ADMIN_LOGIN = "adminLogin";
	// 用户登录- cookie name
	public static final String COOKIE_USER_NAME = "user.reiz.com";
	// 管理员登录- cookie name
	public static final String COOKIE_ADMIN_NAME = "admin.reiz.com";

	public static final String SYS = "sys";
}
