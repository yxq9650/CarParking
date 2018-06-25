package com.yxq.carpark.service;

import java.util.List;

import com.yxq.carpark.dto.CouponData;
import com.yxq.carpark.entity.Coupon;

public interface CouponService {

	List<CouponData> findAllCoupon(int i, int pAGESIZE, String name);

	int findAllDepotcardCount(String name);

	Coupon findCouponById(int id);

	void deleteCoupon(Integer id);

	List<CouponData> findAllCouponByCardNum(String cardnum,String name);

	void updateCardnum(String cardnum, String cardnumNew);

	void addCoupon(Coupon coupon);

}
