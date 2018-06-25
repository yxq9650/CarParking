package com.yxq.carpark.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.IllegalInfoDao;
import com.yxq.carpark.entity.IllegalInfo;
import com.yxq.carpark.service.IllegalInfoService;


@Service
public class IllegalInfoServiceImpl implements IllegalInfoService {

	@Autowired
	private IllegalInfoDao illegalInfoDao;
	public void save(IllegalInfo info) {
		illegalInfoDao.save(info);
	}
	public List<IllegalInfo> findAllIllegalInfo(int page,int size,String name) {
		return illegalInfoDao.findAllIllegalInfo(page,size,name);
	}
	public IllegalInfo findById(int id) {
		return illegalInfoDao.findById(id);
	}
	public void deleteById(int id) {
		illegalInfoDao.deleteById(id);
	}
	public IllegalInfo findByCarnum(String carnum,Date parkin) {
		return illegalInfoDao.findByCarnum(carnum,parkin);
	}
	public IllegalInfo findByCardnum(String cardNum) {
		return illegalInfoDao.findByCardnum(cardNum);
	}
	public int findAllIllegalInfoCount(String name) {
		return illegalInfoDao.findAllIllegalInfoCount(name);
	}
	public List<IllegalInfo> findByUid(int uid) {
		return illegalInfoDao.findByUid(uid);
	}
	public void updateCardnum(String cardnum, String cardnumNew) {
		illegalInfoDao.updateCardnum(cardnum,cardnumNew);
	}
	public IllegalInfo findByCardnumParkin(String cardNum, Date parkin) {
		return illegalInfoDao.findByCardnumParkin(cardNum,parkin);
	}

}
