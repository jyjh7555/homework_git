package com.kh.homeWork.board.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class VolunteerDetail {
	private int volunteerNo;
	private int memberCount;
	private int boardNo;
	private String category;
	private String groupYn;
	private String address;
	private String mgr;
	private String mgrPhone;
	private Date createDate;
	private Date updateDate;
	private int memberNo;
	private Date recruitStart;
	private Date recruitEnd;
	private Date startDate;
	private Date endDate;
	private String startTime;
	private String endTime;
}
