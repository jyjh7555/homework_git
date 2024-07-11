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
public class Reply {
	private int replyNo;
	private Date createDate;
	private java.util.Date updateDate;
	private String deleteYn;
	private String content;
	private int boardNo;
	private int memberNo;
	private String nickName;
	private String reDate;
}
