package com.yxq.carpark.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yxq.carpark.entity.ParkSpace;
import com.yxq.carpark.entity.User;
import com.yxq.carpark.service.ParkspaceService;
import com.yxq.carpark.service.UserService;
import com.yxq.carpark.utils.Msg;


@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/login")
	public String login1(){
		return "login";
	}
	
	@ResponseBody
	@RequestMapping("/login/index")
	public Msg loginIndex(User user,HttpSession httpSession){
		User user1=userService.findUserByUsername(user.getUsername());
		if(user1.getPassword().equals(user.getPassword()))
		{
			httpSession.setAttribute("user", user1);
			return Msg.success();
			
		}else{
			return Msg.fail().add("va_msg", "密码错误");
		}
	}
	
	//ajax校验username是否存在
	@ResponseBody
	@RequestMapping("/login/checkUsernameExit")
	public Msg checkUsernameExit(@RequestParam("username")String username){
		System.out.println("username:"+username);
		User user=userService.findUserByUsername(username);
		if(user==null)
		{
			return Msg.fail().add("va_msg", "用户名不存在");
		}
		return Msg.success();
	}
}
