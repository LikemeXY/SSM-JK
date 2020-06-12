package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.bean.Emp;
import com.edu.bean.EmpExample;
import com.edu.mapper.EmpMapper;
import com.edu.service.EmpService;
@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpMapper empMapper;
	@Override
	public List<Emp> getAll() {
		
		return empMapper.selectByExample(new EmpExample());
	}
	@Override
	public void insertEmp(Emp emp) {
		empMapper.insertSelective(emp);
		
	}
	@Override
	public Emp getSelectById(int id) {
		
		return empMapper.selectByPrimaryKey(id);
	}
	@Override
	public void updateEmp(Emp emp) {
		empMapper.updateByPrimaryKeySelective(emp);
	}
	@Override
	public void del(int id) {
		empMapper.deleteByPrimaryKey(id);
		
	}

}
