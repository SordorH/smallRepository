package com.hwl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwl.dao.UserDao;
import com.hwl.entity.User;
import com.hwl.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userDao;
	public User login(User user){
		return userDao.getMatchUser(user);
	}
	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}
	@Override
	public User getUserById(Integer uid) {
		// TODO Auto-generated method stub
		return userDao.getUserById(uid);
	}
	@Override
	public void setNewGold(User user) {
		// TODO Auto-generated method stub
		userDao.setNewGold(user);
	}
	
}
