package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.bean.MoveBook;
import com.edu.mapper.MoveBookMapper;
import com.edu.service.MoveBookService;

@Service
public class MoveBookServcieImpl implements MoveBookService{
	@Autowired
	private MoveBookMapper moveBookMapper;
	
	public List<MoveBook> getAll() {
		
		return moveBookMapper.selectByExample(null);
	}

	@Override
	public void insertVideo(MoveBook moveBook) {
		moveBookMapper.insertSelective(moveBook);
		
	}

	@Override
	public MoveBook getSelectById(int id) {
		// TODO Auto-generated method stub
		return moveBookMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateEmp(MoveBook moveBook) {
		moveBookMapper.updateByPrimaryKeySelective(moveBook);
		
	}

}
