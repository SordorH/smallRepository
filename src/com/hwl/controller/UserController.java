package com.hwl.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hwl.entity.User;
import com.hwl.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public ModelAndView login(User user,ModelAndView mav,HttpServletRequest request){
		User aUser = userService.login(user);
		if(aUser==null){
			mav.addObject("message","用户名或密码错误");
			mav.setViewName("loginForm");
		}else{
			request.getSession().setAttribute("user", aUser);
			mav.setView(new RedirectView("main"));
		}
		return mav;
	}
	@RequestMapping("/registerUser")
	public ModelAndView registerUser(User user,ModelAndView mav){
		userService.register(user);
		mav.setView(new RedirectView("registerSuccess"));
		return mav;
	}
}
