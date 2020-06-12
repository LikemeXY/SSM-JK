package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.bean.Emp;
import com.edu.bean.EmpExample;
import com.edu.bean.User;
import com.edu.bean.UserExample;
import com.edu.bean.Video;
import com.edu.mapper.EmpMapper;
import com.edu.mapper.UserMapper;
import com.edu.mapper.VideoMapper;
import com.edu.service.EmpService;
import com.edu.service.VideoService;
@Service
public class VideoServiceImp implements VideoService {
	@Autowired
	private VideoMapper videoMapper;
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<Video> getAll() {
		
		return videoMapper.selectByExample(null);
	}
	@Override
	public void insertVideo(Video video) {
		videoMapper.insertSelective(video);
		
	}
	@Override
	public User getByUser(User user) {
		UserExample example = new UserExample();
		example.createCriteria().andCellphoneEqualTo(user.getCellphone())
		.andUserpwdEqualTo(user.getUserpwd());
		List<User> users = userMapper.selectByExample(example);
		if (users.size()>0) {
			return users.get(0);
		}
		return null;
		
	}
	@Override
	public Video getSelectById(int id) {
		
		return videoMapper.selectByPrimaryKey(id);
	}
	@Override
	public void updateEmp(Video video) {
		videoMapper.updateByPrimaryKeySelective(video);
		
	}
	@Override
	public void del(int id) {
		videoMapper.deleteByPrimaryKey(id);
		
	}
	

}
