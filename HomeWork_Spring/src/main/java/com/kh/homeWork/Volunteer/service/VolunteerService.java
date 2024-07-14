package com.kh.homeWork.Volunteer.service;

import java.util.List;
import java.util.Map;

import com.kh.homeWork.Volunteer.model.Volunteer;

public interface VolunteerService {

	int insertVolunteer(Volunteer volunteer);

	Integer getVolunteerNoByBoardNo(int boardNo);

	List<Volunteer> getRecentVolunteers(int memberNo);

}
