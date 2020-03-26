package com.nwnu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nwnu.pojo.Mannager;
import com.nwnu.service.MannagerService;

@Controller
public class MannagerController {
	@Autowired
	private MannagerService mannagerService;

	@RequestMapping("/admin")
	public String admin(String name, String password, Model model, HttpSession session) {
		// 通过用户账号和密码查找用户
		Mannager mannager = mannagerService.findMannager(name, password);
		if (mannager != null) {
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", mannager);
			model.addAttribute("mannager", mannager);
			// 跳转到主页面
			return "redirect:listStudent";
		}
		// 返回到登录界面
		model.addAttribute("msg", "账号或密码错误，请重新输入");
		return "admin";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// 清除Session
		session.invalidate();
		// 页面重定向
		return "redirect:admin";
	}
}
