package com.situ.sephora.user.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.user.dao.UserDao;
import com.situ.sephora.user.domain.User;
import com.situ.sephora.user.service.UserService;
import com.situ.sephora.utils.MD5Utils;
import com.situ.sephora.utils.PageUtils;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public Long saveUser(User user, Integer userKind) {
		user.setUserPass(MD5Utils.encode(user.getUserPass()));
		user.setActiveFlag(1);
		user.setCreateBy("admin");
		user.setCreateDate(new Date());
		user.setLockFlag(User.USER_LOCK_NO);
		user.setUserKind(userKind);
		return userDao.saveUser(user);
	}

	@Override
	public Integer delUser(Long rowId) {
		userDao.delUser(rowId);
		return 1;
	}

	@Override
	public Integer updateUser(User user) {
		if (user.getUserPass() != null) {
			user.setUserPass(MD5Utils.encode(user.getUserPass()));
		}
		user.setUpdateBy("admin");
		user.setUpdateDate(new Date());
		user = PageUtils.buildSearchParam(user);
		userDao.updateUser(user);
		return 1;
	}
	
	@Override
	public User getById(Long rowId) {
		return this.userDao.getById(rowId);
	}

	@Override
	public User getByUser(User user) {
		if (user.getUserPass() != null) {
			user.setUserPass(MD5Utils.encode(user.getUserPass()));
		}
		user = PageUtils.buildSearchParam(user);
		return userDao.getByUser(user);
	}

	@Override
	public List<User> find(User user) {
		user = PageUtils.buildSearchParam(user);
		return userDao.find(user);
	}

	@Override
	@PostConstruct
	public void initUserData() {
		String userCode = "admin";
		String userPass = "admin";
		User user = userDao.getByCode(userCode);
		if (user == null) {
			user = new User();
			user.setUserName("管理员");
			user.setUserCode(userCode);
			user.setUserPass(MD5Utils.encode(userPass));
			user.setActiveFlag(1);
			user.setUserKind(User.USER_KIND_ADMIN);
			user.setLockFlag(User.USER_LOCK_NO);
			user.setCreateBy("admin");
			user.setCreateDate(new Date());
			userDao.saveUser(user);
		}
	}

}
