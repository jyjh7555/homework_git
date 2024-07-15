package com.kh.homeWork.Volunteer.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.Volunteer.model.Volunteer;
@Repository("vDAO")
public class VolunteerDAO {

	public int inserVolunteer(SqlSessionTemplate sqlSession, Volunteer volunteer) {
		return sqlSession.insert("volunteerMapper.insertVolunteer",volunteer);
	}

	public Integer getVolunteerNoByBoardNo(SqlSessionTemplate sqlSession,int boardNo) {
		return sqlSession.selectOne("volunteerMapper.getVolunteerNoByBoardNo",boardNo);
	}

	public List<Volunteer> getRecentVolunteers(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectList("volunteerMapper.getRecentVolunteers",memberNo);
	}

}
