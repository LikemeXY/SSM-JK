package com.edu.service;

import java.util.List;

import com.edu.bean.Emp;

public interface EmpService {

	List<Emp> getAll();

	void insertEmp(Emp emp);

	Emp getSelectById(int id);

	void updateEmp(Emp emp);

	void del(int id);

}
