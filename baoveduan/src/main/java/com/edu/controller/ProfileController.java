package com.edu.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.entity.Account;
import com.edu.service.AccountService;
import com.edu.service.impl.AccountServiceImpl;

@Controller
@RequestMapping("profile")
public class ProfileController {
	@Autowired
	AccountService accountService;
	@Autowired
	AccountServiceImpl accountServiceImpl;

	// Lấy id user và show form
	@GetMapping("/user")
	public String profile(Model model, HttpServletRequest request) {
		String username = request.getRemoteUser(); //Lấy request id user sau khi login 
		model.addAttribute("account", accountService.findById(username)); // Tìm id của user
		return "security/profile";
	}

	// Update info user
	@PostMapping("/user")
	public String processProfile(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String image = request.getParameter("image");
		String username = request.getRemoteUser();
		Account account = accountService.findById(username); 
		accountServiceImpl.profileupdate(account, name, address, phone, image); // Lưu info
		model.addAttribute("message", "Bạn đã thay đổi thành công");
		model.addAttribute("account", accountService.findById(username));
		return "redirect:/profile/user";
	}
	
	// Show form đổi MK
	@GetMapping("/changepassword")
	public String change() {
		return "security/Change_ps2";
	}
	// Xử lí đổi MK
	@PostMapping("/changepassword")
	public String processPassword(HttpServletRequest request, Model model) {
		String password = request.getParameter("password");
		String username = request.getRemoteUser();
		Account account = accountService.findById(username);
		accountServiceImpl.changepassword(account, password); // Lưu info
		model.addAttribute("message", "Bạn đã thay đổi thành công mật khẩu của bạn.");
		return "security/Change_ps2";
	}
}
