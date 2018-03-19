package com.hwl.service;

import java.util.List;

import com.hwl.entity.Task;
import com.hwl.entity.User;

public interface TaskService {
	List<Task> showTask();
	void deleteTask(Integer id);
	void addTask(Task task);
	Task getTaskById(Integer tid);
	void updateTask(Task task);
}
