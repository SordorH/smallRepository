package com.hwl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hwl.dao.TaskDao;
import com.hwl.entity.Task;
import com.hwl.entity.User;
import com.hwl.service.TaskService;
import com.hwl.service.UserService;

@Controller
public class TaskController {

	@Autowired
	TaskService taskService;
	@Autowired
	UserService userService;
	//显示
	@RequestMapping("listTask")
	public ModelAndView listTask(ModelAndView mav,
			@RequestParam(value="pn",defaultValue="1")Integer pn){
		PageHelper.startPage(pn,5);
		List<Task> ts = taskService.showTask();
		PageInfo page = new PageInfo(ts,5);
		mav.addObject("pageInfo",page);
		mav.setViewName("listTask");
		return mav;
	}
	//删除
	@ResponseBody
	@RequestMapping(value="{tid}",method=RequestMethod.DELETE)
	public void deleteTask(@PathVariable("tid")Integer tid){
		taskService.deleteTask(tid);
	}
	
	//增加
	@RequestMapping(value="addTask",method=RequestMethod.POST)
	public ModelAndView addTask(ModelAndView mav,Task task){
		taskService.addTask(task);
		mav.setViewName("redirect:listTask");
		return mav;
	}
	
	//修改界面回显
	@ResponseBody
	@RequestMapping(value="retrieval/{tid}",method=RequestMethod.GET)
	public Task retrieval(@PathVariable("tid") Integer tid){
		Task task = taskService.getTaskById(tid);
		return task;
	}
	//修改
	@RequestMapping(value="{tid}",method=RequestMethod.PUT)
	public ModelAndView updateTask(ModelAndView mav,Task task){
		taskService.updateTask(task);
		mav.setViewName("redirect:listTask");
		return mav;
	}
	//完成任务
	@ResponseBody
	@RequestMapping(value="finish",method=RequestMethod.DELETE)
	public void finish(Integer tid,Integer uid,HttpServletRequest request){
		Task task = taskService.getTaskById(tid);
		Integer addGold = task.getReward();
		User user = userService.getUserById(uid);
		Integer newGold = addGold+user.getGoldCoin();
		user.setGoldCoin(newGold);
		userService.setNewGold(user);
		request.getSession().setAttribute("user", user);
	}
}
