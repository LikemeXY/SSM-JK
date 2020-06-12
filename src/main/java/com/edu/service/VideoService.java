package com.edu.service;

import java.util.List;

import com.edu.bean.Emp;
import com.edu.bean.User;
import com.edu.bean.Video;

public interface VideoService {

	List<Video> getAll();

	void insertVideo(Video video);

	User getByUser(User user);

	Video getSelectById(int id);

	void updateEmp(Video video);

	void del(int id);


}
