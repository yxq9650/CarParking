package com.yxq.carpark.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.ParkinfoDao;
import com.yxq.carpark.dao.ParkspaceDao;
import com.yxq.carpark.dto.FormData;
import com.yxq.carpark.entity.ParkInfo;
import com.yxq.carpark.entity.ParkSpace;
import com.yxq.carpark.service.ParkinfoService;


@Service
public class ParkinfoServiceImpl implements ParkinfoService {

	@Autowired
	private ParkinfoDao parkinfoDao;
	public void saveParkinfo(FormData data) {
		Date parkin=new Date();
		ParkInfo parkInfo=new ParkInfo();
		parkInfo.setParknum(data.getParkNum());
		parkInfo.setCarnum(data.getCarNum());
		parkInfo.setCardnum(data.getCardNum());
		parkInfo.setParktem(data.getParkTem());
		parkInfo.setParkin(parkin);
		parkinfoDao.save(parkInfo);
	}
	public ParkInfo findParkinfoByParknum(int parknum) {
		return parkinfoDao.findParkinfoByParknum(parknum);
	}
	public void deleteParkinfoByParkNum(int parkNum) {
		parkinfoDao.deleteParkinfoByParkNum(parkNum);
	}
	public ParkInfo findParkinfoByCardnum(String cardnum) {
		return parkinfoDao.findParkinfoByCardnum(cardnum);
	}
	public void updateCardnum(String cardnum, String cardnumNew) {
		parkinfoDao.updateCardnum(cardnum,cardnumNew);
	}
}
