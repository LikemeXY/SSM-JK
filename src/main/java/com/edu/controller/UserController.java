package com.edu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.core.Filter.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.bean.Emp;
import com.edu.bean.User;
import com.edu.bean.Video;
import com.edu.service.EmpService;
import com.edu.service.VideoService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	private VideoService videoService ;

	
	@RequestMapping("/login")
	public String login() {
		return "index";
	}
	@RequestMapping(value="/index",method=RequestMethod.POST)
	public String index(User user,Model model,HttpSession session) {
		// 调用service接口进行保存
		User users = videoService.getByUser(user);
		if (null == users) {
			model.addAttribute("msg","登陆失败");
			return "index";
		}
		
		session.setAttribute("USER", users);
		return "redirect:/video/videolist";
	}
}
