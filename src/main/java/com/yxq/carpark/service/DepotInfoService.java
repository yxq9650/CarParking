package com.yxq.carpark.service;

import com.yxq.carpark.dto.ChargeData;
import com.yxq.carpark.entity.DepotInfo;

public interface DepotInfoService {

	void update(ChargeData chargeData);

	DepotInfo findById(int i);

}
