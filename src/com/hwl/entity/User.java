package com.hwl.entity;


public class User {
	private int uid;
	private String username;
	private int goldCoin;
	private String password;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getGoldCoin() {
		return goldCoin;
	}
	public void setGoldCoin(int goldCoin) {
		this.goldCoin = goldCoin;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
