package com.yxq.carpark.service;

import java.util.List;

import com.yxq.carpark.dto.FormData;
import com.yxq.carpark.entity.ParkInfo;
import com.yxq.carpark.entity.ParkSpace;


public interface ParkinfoService {
	public void saveParkinfo(FormData data);
	public ParkInfo findParkinfoByParknum(int parknum);
	public void deleteParkinfoByParkNum(int parkNum);
	public ParkInfo findParkinfoByCardnum(String cardnum);
	public void updateCardnum(String cardnum, String cardnumNew);
}
