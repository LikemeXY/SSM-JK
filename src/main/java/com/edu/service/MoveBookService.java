package com.edu.service;

import java.util.List;

import com.edu.bean.MoveBook;

public interface MoveBookService {

	List<MoveBook> getAll();

	void insertVideo(MoveBook moveBook);

	MoveBook getSelectById(int id);

	void updateEmp(MoveBook moveBook);

}
