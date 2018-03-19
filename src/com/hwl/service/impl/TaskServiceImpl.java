package com.hwl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwl.dao.TaskDao;
import com.hwl.entity.Task;
import com.hwl.service.TaskService;

@Service
public class TaskServiceImpl implements TaskService {
	@Autowired
	TaskDao taskDao;
	@Override
	public List<Task> showTask() {
		// TODO Auto-generated method stub
		return taskDao.list();
	}
	@Override
	public void deleteTask(Integer id) {
		// TODO Auto-generated method stub
		taskDao.delTask(id);
	}
	@Override
	public void addTask(Task task) {
		// TODO Auto-generated method stub
		taskDao.addTask(task);
	}
	
	@Override
	public Task getTaskById(Integer tid) {
		// TODO Auto-generated method stub
		return taskDao.getTaskById(tid);
	}
	@Override
	public void updateTask(Task task) {
		// TODO Auto-generated method stub
		taskDao.updateTask(task);
	}

}
