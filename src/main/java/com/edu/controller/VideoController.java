package com.edu.controller;

import java.util.List;

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
@RequestMapping(value="/video")
public class VideoController {
	@Autowired
	private VideoService videoService ;
	/**
	 * 查询所有的商品的信息
	 * @return
	 */
	@GetMapping("/videolist")
	public String list(Model model ) {
		// 准备数据
		List<Video> videoList = videoService.getAll();
		// 把数据放入到作用域中(request作用域中)
		model.addAttribute("videoList", videoList);
		return "videolist" ;
	}
	/**
	 * 跳转到新增页面
	 * @return
	 */
	@GetMapping("/editvideo")
	public String addUI() {
		return "addvideo";
	}
	@RequestMapping(value="/editvideos",method=RequestMethod.POST)
	public String add(Video video) {
		// 调用service接口进行保存
		videoService.insertVideo(video);
		return "redirect:/video/videolist";
	}
	/**
	 * 跳转到修改页面
	 * @return
	 */
	@GetMapping("/edit/{id}")
	public String editUI(@PathVariable("id") int id,Model model) {
		Video video = videoService.getSelectById(id); ;
		// 把数据保存到request作用域
		model.addAttribute("video", video);
		return "updatevideo";
	}
	/**
	 * 进行修改操作
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/editupdate",method=RequestMethod.POST)
	public String edit(Video video) {		
		videoService.updateEmp(video);
		return "redirect:/video/videolist";	
		
	}
	@DeleteMapping("/edit/{id}")
	public String del(@PathVariable("id") int id) {
		videoService.del(id);
		// 调用service方法进行删除
		return "redirect:/video/videolist";
	}
}
