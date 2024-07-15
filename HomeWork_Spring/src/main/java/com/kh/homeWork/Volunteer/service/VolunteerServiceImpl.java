package com.kh.homeWork.Volunteer.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.Volunteer.dao.VolunteerDAO;
import com.kh.homeWork.Volunteer.model.Volunteer;



@Service("vService")
public class VolunteerServiceImpl implements VolunteerService {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private VolunteerDAO vDAO;
	
	@Override
	public int insertVolunteer(Volunteer volunteer) {
		return vDAO.inserVolunteer(sqlSession,volunteer);
	}

	@Override
	public Integer getVolunteerNoByBoardNo(int boardNo) {
		return vDAO.getVolunteerNoByBoardNo(sqlSession,boardNo);
	}

	@Override
	public List<Volunteer> getRecentVolunteers(int memberNo) {
		return vDAO.getRecentVolunteers(sqlSession,memberNo);
	}

}
