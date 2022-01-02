package com.edu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.edu.service.AccountService;
import com.edu.service.CategoryService;

@Component
public class Globallnterceptor  implements HandlerInterceptor {

	@Autowired
	CategoryService categoryService;
	@Autowired
	AccountService accountService;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		request.setAttribute("cates", categoryService.findAll());
		// Lấy info user
		request.setAttribute("userAll", accountService.findByname(request.getRemoteUser()));
	}
}
