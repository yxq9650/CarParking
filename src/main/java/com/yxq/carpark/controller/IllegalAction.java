package com.yxq.carpark.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yxq.carpark.entity.IllegalInfo;
import com.yxq.carpark.entity.User;
import com.yxq.carpark.service.IllegalInfoService;
import com.yxq.carpark.service.UserService;
import com.yxq.carpark.utils.Msg;


@Controller
public class IllegalAction {

	@Autowired
	private IllegalInfoService illegalInfoService;
	@Autowired 
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("index/illegal/findIllegalInfo")
	public Msg findIllegalInfo(@RequestParam("id") Integer id)
	{
		IllegalInfo illegalInfo=illegalInfoService.findById(id.intValue());
		if(illegalInfo==null)
		{
			return Msg.fail().add("va_msg", "发生错误，请重新查看！");
		}
		int uid=illegalInfo.getUid();
		User user=userService.findUserById(uid);
		illegalInfo.setUsername(user.getUsername());
		Date date=illegalInfo.getTime();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=formatter.format(date);
		illegalInfo.setFormatDate(time);
		return Msg.success().add("illegalInfo", illegalInfo);
	}
	
	@RequestMapping("index/illegal/deleteIllegalInfo")
	@ResponseBody
	public Msg deleteIllegalInfo(@RequestParam("id") Integer id)
	{
		try {
			illegalInfoService.deleteById(id.intValue());
		} catch (Exception e) {
			return Msg.fail();
		}
		return Msg.success();
	}
}
