package com.yxq.carpark.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.DepotInfoDao;
import com.yxq.carpark.dto.ChargeData;
import com.yxq.carpark.entity.DepotInfo;
import com.yxq.carpark.service.DepotInfoService;


@Service
public class DepotInfoServiceImpl implements DepotInfoService{

	@Autowired 
	private DepotInfoDao depotInfoDao;
	public void update(ChargeData chargeData) {
		depotInfoDao.update(chargeData);
	}
	public DepotInfo findById(int id) {
		return depotInfoDao.findById(id);
	}

}
