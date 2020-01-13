package com.situ.sephora.utils;


import java.io.Serializable;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import com.situ.sephora.user.domain.User;


public class ContextUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String DEFAULT_CURRENT_USER = "sys";

	/**
	 * @Title: getAdminUser 
	 * @Description:(得到当前登录人的信息)
	 * @return
	 */
	public static User getAdminUser() {
		// 得到当前的RequestAttributes对象
		RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
		if (requestAttributes != null) {
			//尝试从 requestAttributes中 取出放置在request或是session中的数据
			Object object = requestAttributes.getAttribute(ConfigUtils.SESSION_ADMIN_LOGIN, RequestAttributes.SCOPE_SESSION);
			if (object != null) {
				User user = (User) object;
				return user;
			}
		}
		return null;
	}
	
	public static User getLoginUser() {
		// 得到当前的RequestAttributes对象
		RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
		if (requestAttributes != null) {
			//尝试从 requestAttributes中 取出放置在request或是session中的数据
			Object object = requestAttributes.getAttribute(ConfigUtils.SESSION_USER_LOGIN, RequestAttributes.SCOPE_SESSION);
			if (object != null) {
				User user = (User) object;
				return user;
			}
		}
		return null;
	}

	/**
	 * 得到当前登录人信息
	 * 
	 * @return
	 */
	public static String getCreateBy() {
		// 得到当前的RequestAttributes对象
		RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
		if (requestAttributes != null) {
			//尝试从 requestAttributes中 取出放置在request或是session中的数据
			Object object = requestAttributes.getAttribute(ConfigUtils.SESSION_ADMIN_LOGIN, RequestAttributes.SCOPE_SESSION);
			if (object != null) {
				User user = (User) object;
				return user.getUserCode();
			}
		}
		return DEFAULT_CURRENT_USER;
	}
}
