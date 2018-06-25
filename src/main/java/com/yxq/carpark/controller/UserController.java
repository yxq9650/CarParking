package com.yxq.carpark.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yxq.carpark.entity.Depotcard;
import com.yxq.carpark.entity.ParkInfo;
import com.yxq.carpark.entity.User;
import com.yxq.carpark.service.DepotcardService;
import com.yxq.carpark.service.ParkinfoService;
import com.yxq.carpark.service.UserService;
import com.yxq.carpark.utils.Msg;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private DepotcardService depotcardService;
	@Autowired
	private ParkinfoService parkinfoService;
	
	//ajax校验username是否存在
		@ResponseBody
		@RequestMapping("/index/user/checkUsername")
		public Msg checkUsername(@RequestParam("username")String username){
			System.out.println("username:"+username);
			User user=userService.findUserByUsername(username);
			if(user==null)
			{
				return Msg.fail().add("va_msg", "用户名不存在");
			}
			return Msg.success();
		}
		
		//添加user
		@ResponseBody
		@RequestMapping("/index/user/addUser")
		public Msg addUser(User user){
			user.setSex("男");
			user.setName(user.getUsername());
			userService.save(user);
			user=userService.findUserByUsername(user.getUsername());
			if(user==null)
			{
				return Msg.fail().add("va_msg", "添加失败！");
			}
				return Msg.success().add("va_msg", "添加成功！");
		}
		
		//查找user
		@ResponseBody
		@RequestMapping("/index/user/findUserById")
		public Msg findUserById(@RequestParam("uid")Integer uid,HttpSession httpSession)
		{
			User user=userService.findUserById(uid.intValue());
			if(user==null)
			{
				return Msg.fail().add("va_msg", "查找失败！");
			}else
			{
				User currentUser=(User) httpSession.getAttribute("user");
				return Msg.success().add("user",user).add("role", currentUser.getRole());
			}
			
		}
		
		//编辑user
		@ResponseBody
		@RequestMapping("/index/user/editUser")
		public Msg editUser(User user){
			int uid=user.getId();
			User temUser=userService.findUserById(uid);
			if(user.getRole()==0)
			{
				user.setRole(temUser.getRole());
			}
			user.setPassword(temUser.getPassword());
			user.setCardid(temUser.getCardid());
			try {
						userService.update(user);
			} catch (Exception e) {
				return Msg.fail().add("va_msg", "修改失败！");
			}
				return Msg.success().add("va_msg", "修改成功！");
		}
		
		//删除user
		@ResponseBody
		@RequestMapping("/index/user/deleteUser")
		@Transactional
		public Msg deleteUser(@RequestParam("uid") Integer uid)
		{
			User user=userService.findUserById(uid);
			if(user!=null)
			{
				int cardid=user.getCardid();
				if(cardid!=0)
				{
					Depotcard depotcard=depotcardService.findByCardid(cardid);
					String cardnum=depotcard.getCardnum();
					ParkInfo parkInfo=parkinfoService.findParkinfoByCardnum(cardnum);
					//正在停车不能删
					if(parkInfo!=null)
					{
						return Msg.fail().add("va_msg", "有车辆在停车，不能删除！");
					}else{
						depotcardService.deleteDepotCard(cardnum);
					}
				}
				userService.delUserById(uid.intValue());
				return Msg.success().add("va_msg", "删除成功！");
			}else{
				return Msg.fail().add("va_msg", "删除失败！");
			}
		}
				
}
