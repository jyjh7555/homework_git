package com.kh.homeWork.member.model.vo;

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
public class Member {
	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String gender;
	private String nickName;
	private String phone;
	private String email;
	private Date age;
	private String address;
	private String isAdmin;
	private String status;
	private Date createDate;
	private String memberName;
}
