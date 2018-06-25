package com.yxq.carpark.interceptor;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.yxq.carpark.entity.User;
import com.yxq.carpark.utils.Constants;


public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		request.setCharacterEncoding("UTF-8"); 
	    response.setCharacterEncoding("UTF-8"); 
	    response.setContentType("text/html;charset=UTF-8"); 

	    User user=(User) request.getSession().getAttribute("user");
	    if(null!=user)
	    {
	    	  response.sendRedirect("/depot-system/index/toindex");
	    	  return false;
	    }
		return super.preHandle(request, response, handler);
	}
}
