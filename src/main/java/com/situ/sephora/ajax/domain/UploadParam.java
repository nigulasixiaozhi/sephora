package com.situ.sephora.ajax.domain;


import java.io.Serializable;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * ajax 文件上传
 * 
 * @author wxinpeng
 *
 */
public class UploadParam implements Serializable {
	private static final long serialVersionUID = 1L;
	private String userName;
	//在Spring-mvc.xml中配置的CommonsMultipartResolver会将提交的二进制文件封装成 CommonsMultipartFile
	private CommonsMultipartFile userFile;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public CommonsMultipartFile getUserFile() {
		return userFile;
	}

	public void setUserFile(CommonsMultipartFile userFile) {
		this.userFile = userFile;
	}
}
