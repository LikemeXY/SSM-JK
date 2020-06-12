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
import com.edu.bean.MoveBook;
import com.edu.bean.User;
import com.edu.bean.Video;
import com.edu.service.EmpService;
import com.edu.service.MoveBookService;
import com.edu.service.VideoService;

@Controller
@RequestMapping(value="/book")
public class MoveBookController {
	@Autowired
	private MoveBookService moverBookService ;
	/**
	 * 查询所有的商品的信息
	 * @return
	 */
	@GetMapping("/booklist")
	public String list(Model model ) {
		// 准备数据
		List<MoveBook> moveBooks = moverBookService.getAll();
		// 把数据放入到作用域中(request作用域中)
		model.addAttribute("moveBooks", moveBooks);
		return "booklist" ;
	}
	/**
	 * 跳转到新增页面
	 * @return
	 */
	@GetMapping("/addbook")
	public String addUI() {
		return "addbook";
	}
	@RequestMapping(value="/addbooks",method=RequestMethod.POST)
	public String add(MoveBook moveBook) {
		// 调用service接口进行保存
		moverBookService.insertVideo(moveBook);
		return "redirect:/book/booklist";
	}
	/**
	 * 跳转到详情页面
	 * @return
	 */
	@GetMapping("/editbook/{id}")
	public String editUI(@PathVariable("id") int id,Model model) {
		MoveBook moveBook = moverBookService.getSelectById(id); ;
		// 把数据保存到request作用域
		model.addAttribute("moveBook", moveBook);
		return "updatbook";
	}
	@GetMapping("/editbook2/{id}")
	public String edit(@PathVariable("id") int id,Model model) {
		MoveBook moveBook = moverBookService.getSelectById(id); ;
		// 把数据保存到request作用域
		model.addAttribute("moveBook", moveBook);
		return "editbook";
	}
	
	@RequestMapping(value="/editupdate",method=RequestMethod.POST)
	public String edit(MoveBook moveBook) {		
		moverBookService.updateEmp(moveBook);
		return "redirect:/book/booklist";
		
	}
}
