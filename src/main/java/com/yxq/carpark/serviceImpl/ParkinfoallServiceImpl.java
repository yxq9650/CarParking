package com.yxq.carpark.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.ParkinfoallDao;
import com.yxq.carpark.dto.ParkinfoallData;
import com.yxq.carpark.entity.Parkinfoall;
import com.yxq.carpark.service.ParkinfoallService;


@Service
public class ParkinfoallServiceImpl implements ParkinfoallService {

	@Autowired
	private ParkinfoallDao parkinfoallDao;
	public List<ParkinfoallData> findAllParkinfoall(int page,int size) {
		return parkinfoallDao.findAllParkinfoall(page,size);
	}
	public void save(Parkinfoall parkinfoall) {
		parkinfoallDao.save(parkinfoall);
	}
	public ParkinfoallData findById(int id) {
		return parkinfoallDao.findById(id);
	}
	public int findAllParkinfoallCount(String name) {
		return parkinfoallDao.findAllParkinfoallCount(name);
	}
	public List<ParkinfoallData> findAllParkinfoallByLike(int page, int size, String name) {
		return parkinfoallDao.findAllParkinfoallByLike(page,size,name);
	}
	public List<ParkinfoallData> findByCardNum(String cardnum,String name) {
		return parkinfoallDao.findByCardNum(cardnum,name);
	}
	public void updateCardnum(String cardnum, String cardnumNew) {
		parkinfoallDao.updateCardnum(cardnum,cardnumNew);
	}
	public List<ParkinfoallData> findByCardNumByPage(int page, int size, String cardnum, String name) {
		return parkinfoallDao.findByCardNumByPage(page,size,cardnum,name);
	}

}
