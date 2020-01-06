package com.situ.sephora.user.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.user.domain.User;

@Repository
public interface UserDao {
	Long saveUser(User user);
	
	void delUser(Long rowId);
	
	User getByUser(User user);
	
	User getById(Long rowId);
	
	User getByCode(String userCode);
	
	List<User> find(User user);
	
	void updateUser(User user);
}
