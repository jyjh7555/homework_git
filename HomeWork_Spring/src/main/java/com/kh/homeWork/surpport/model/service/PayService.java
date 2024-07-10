package com.kh.homeWork.surpport.model.service;

import java.util.ArrayList;

import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.surpport.model.vo.Pay;

public interface PayService {

	int insertPay(Pay pay);

	int getListCount();

	ArrayList<Pay> adminPayList(PageInfo pi);

}
