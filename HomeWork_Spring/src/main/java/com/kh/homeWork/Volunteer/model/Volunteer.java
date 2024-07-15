package com.kh.homeWork.Volunteer.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Volunteer {
	private int memberNo;
	private int volunteerNo;
	private int boardNo;
	private String title;
	private String status;
}
