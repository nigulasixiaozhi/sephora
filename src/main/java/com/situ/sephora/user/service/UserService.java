package com.situ.sephora.user.service;

import java.util.List;

import com.situ.sephora.user.domain.User;

public interface UserService {
	Long saveUser(User user,Integer userKind);
	
	Integer delUser(Long rowId);
	
	Integer updateUser(User user);
	
	List<User> find(User user);
	
	User getByUser(User user);
	
	User getById(Long rowId);
	
	void initUserData();
}
