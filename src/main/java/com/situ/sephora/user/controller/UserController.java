package com.situ.sephora.user.controller;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.user.domain.User;
import com.situ.sephora.user.service.UserService;
import com.situ.sephora.utils.ConfigUtils;

@Controller
public class UserController implements Serializable {
	private static final long serialVersionUID = 1L;

	@Autowired
	private UserService userService;
	private static Logger LOG = Logger.getLogger(UserController.class);

	@ResponseBody
	@RequestMapping("/addUser")
	public Long saveUser(User user) {
		return userService.saveUser(user,User.USER_KIND_SHOP);
	}

	@ResponseBody
	@RequestMapping("/doLogin")
	public User doLogin(User user,HttpServletRequest request) {
		User user2 = userService.getByUser(user);
		 request.getSession().setAttribute(ConfigUtils.SESSION_USER_LOGIN, user2);
		return user2;
	}
	
	@ResponseBody
	@RequestMapping("/getUrlPath")
	public String getUrlPath(HttpServletRequest request) {
		 Object object = request.getSession().getAttribute(ConfigUtils.URL_PATH);
		 if (object!=null) {
			String urlPath = (String) object;
			return urlPath;
		}
		 return null;
	}

	@ResponseBody
	@RequestMapping("admin/doLogin")
	public User doAdminLogin(User user,HttpServletRequest request) {
		user = userService.getByUser(user);
		if (user != null && user.getUserKind() == User.USER_KIND_ADMIN) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(60*60);
			session.setAttribute(ConfigUtils.SESSION_ADMIN_LOGIN, user);
			return user;
		}
		return null;
	}

	@ResponseBody
	@RequestMapping("admin/addUser")
	public Long saveAdminUser(User user) {
		return userService.saveUser(user,User.USER_KIND_ADMIN);
	}
	
	@ResponseBody
	@RequestMapping("admin/UpdateUser")
	public Integer UpdateAdminUser(User user) {
		return userService.updateUser(user);
	}
	
	@ResponseBody
	@RequestMapping("admin/delUser")
	public Integer doDelUser(@RequestParam Long rowId) {
		return this.userService.delUser(rowId);
	}

}
