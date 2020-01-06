package com.situ.sephora.ajax.controller;


import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.sephora.ajax.domain.UploadParam;


@Controller
public class AjaxController implements Serializable {
	private static final long serialVersionUID = 1L;

	@ResponseBody
	@RequestMapping("/admin/upload")
	public String testUpload(UploadParam uploadParam, HttpServletRequest request) {
		System.out.println(uploadParam.getUserName());
		System.out.println(uploadParam.getUserFile());
		CommonsMultipartFile userFile = uploadParam.getUserFile();
		String name = userFile.getName();
		System.out.println("上传的文件的ParamName=" + name);
		String originalFilename = userFile.getOriginalFilename();
		System.out.println("上传的文件名称=" + originalFilename);
		Long size = userFile.getSize();
		System.out.println("上传文件的大小=" + size);

		// 文件的后缀
		String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
		// 写出的文件地址#此路径应该写到数据库中
		String filePath = "assert/uploads/" + Calendar.getInstance().getTimeInMillis() + suffix;
		// 项目的根路径
		String realPath = request.getServletContext().getRealPath("/");
		//要写出的文件
		File toFile = new File(realPath + filePath);
		try {
			//通过 transferTo 直接将文件写出
			userFile.transferTo(toFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		/*
		 * try { InputStream inputStream = userFile.getInputStream(); } catch
		 * (IOException e) { e.printStackTrace(); }
		 */
		return filePath;
	}
}
