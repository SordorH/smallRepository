package com.hwl.dao;

import java.util.List;

import com.hwl.entity.Task;

public interface TaskDao {
	List<Task> list();
	void delTask(Integer id);
	void addTask(Task task);
	Task getTaskById(Integer tid);
	void updateTask(Task task);
}
