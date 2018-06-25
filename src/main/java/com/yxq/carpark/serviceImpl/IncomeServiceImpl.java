package com.yxq.carpark.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.IncomeDao;
import com.yxq.carpark.dto.IncomeData;
import com.yxq.carpark.entity.Income;
import com.yxq.carpark.service.IncomeService;


@Service
public class IncomeServiceImpl implements IncomeService {

	@Autowired
	private IncomeDao incomeDao;
	
	public void save(Income income) {
		incomeDao.save(income);
	}

	public List<IncomeData> findAllIncome(int page,int size,String content,String startTime,String endTime,int num) {
		return incomeDao.findAllIncome(page,size,content,startTime,endTime,num);
	}

	public Income findById(Integer id) {
		return incomeDao.findById(id);
	}

	public int findAllIncomeCount(String content,String startTime,String endTime,int num) {
		return incomeDao.findAllIncomeCount(content,startTime,endTime,num);
	}

	public void updateCardnum(String cardnum, String cardnumNew) {
		incomeDao.updateCardnum(cardnum,cardnumNew);
	}

	public List<IncomeData> findAllIncome(String content, String startTime, String endTime, Integer num) {
		return incomeDao.findAllIncome1(content,startTime,endTime,num);
	}

	@Override
	public int findPayByType(int type) {
		// TODO Auto-generated method stub
		return incomeDao.findPayByType(type);
	}

}
