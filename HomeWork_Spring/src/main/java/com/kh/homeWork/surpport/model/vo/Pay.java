package com.kh.homeWork.surpport.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Pay {
	private int paNo;
	private int memberNo;
	private String payDate;
	private int amount;
	private String buyerName;
	private String buyerTel;
	private String buyerEmail;
	private String merchantUid;
	private String name;
	
}
