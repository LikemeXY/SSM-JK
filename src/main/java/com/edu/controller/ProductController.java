package com.edu.controller;

import java.util.List;



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

import com.edu.bean.Emp;
import com.edu.service.EmpService;

@Controller
public class ProductController {
	@Autowired
	private EmpService empService ;
	/**
	 * 查询所有的商品的信息
	 * @return
	 */
	@GetMapping("/list")
	public String list(Model model ) {
		// 准备数据
		List<Emp> empList = empService.getAll();
		// 把数据放入到作用域中(request作用域中)
		model.addAttribute("empList", empList);
		return "list" ;
	}
	/**
	 * 跳转到新增页面
	 * @return
	 */
	@GetMapping("/edit")
	public String addUI() {
		return "add";
	}
	@PostMapping("/edit")
	public String add(Emp emp) {

		// 调用service接口进行保存
		empService.insertEmp(emp);
		return "redirect:/list";
	}
	/**
	 * 跳转到修改页面
	 * @return
	 */
	@GetMapping("/edit/{id}")
	public String editUI(@PathVariable("id") int id,Model model) {
		Emp emp = empService.getSelectById(id); ;
		// 把数据保存到request作用域
		model.addAttribute("emp", emp);
		return "edit";
	}
	/**
	 * 进行修改操作
	 * @param request
	 * @return
	 */
	@PutMapping("/edit")
	public String edit(@Validated Emp emp,BindingResult result) {		
			empService.updateEmp(emp);
			return "redirect:/list";	
		
	}
	@DeleteMapping("/edit/{id}")
	public String del(@PathVariable("id") int id) {
		
		empService.del(id);
		// 调用service方法进行删除
		return "redirect:/list";
	}
	
}
