package com.hwl.service;

import com.hwl.entity.User;

public interface UserService {
	User login(User user);
	void register(User user);
	User getUserById(Integer uid);
	void setNewGold(User user);
}
