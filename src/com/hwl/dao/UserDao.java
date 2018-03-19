package com.hwl.dao;

import com.hwl.entity.User;

public interface UserDao {
	public User getMatchUser(User user);
	public void addUser(User user);
	public User getUserById(Integer uid);
	public void setNewGold(User user);
}
