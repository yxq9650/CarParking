package com.yxq.carpark.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yxq.carpark.dto.CouponData;
import com.yxq.carpark.entity.Coupon;



public interface CouponDao extends BaseDao<Coupon>{

	List<CouponData> findAllCoupon(@Param("page")int page, @Param("size")int size, @Param("name")String name);

	int findAllDepotcardCount(@Param("name")String name);

	Coupon findCouponById(int id);

	void deleteCoupon(@Param("id")Integer id);

	List<CouponData> findAllCouponByCardNum(@Param("cardnum")String cardnum,@Param("name")String name);

	void updateCardnum(@Param("cardnum")String cardnum, @Param("cardnumNew")String cardnumNew);

	void addCoupon(Coupon coupon);

}
