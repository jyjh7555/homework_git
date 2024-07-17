package com.kh.homeWork.board.model.vo;

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
public class Board {
	private int boardNo;
	private String locationNo;
	private String location;
	private String title;
	private String content;
	private String deleteYn;
	private int boardCount;
	private Date createDate;
	private Date updateDate;
	private int memberNo;
	private int boardType;
	private int fullCount;
	private int nowCount;
	private Date recruitStart;
	private Date recruitEnd;
	private boolean dateCheckEnd;
	private boolean dateCheckStart;
}
