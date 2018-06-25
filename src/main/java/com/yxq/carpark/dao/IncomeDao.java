package com.yxq.carpark.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yxq.carpark.dto.IncomeData;
import com.yxq.carpark.entity.CardType;
import com.yxq.carpark.entity.Income;


public interface IncomeDao extends BaseDao<Income>{

	List<IncomeData> findAllIncome(@Param("page")int page,@Param("size")int size,@Param("content")String content,@Param("startTime")String startTime,@Param("endTime")String endTime,@Param("num")int num);

	Income findById(Integer id);

	int findAllIncomeCount(@Param("content")String content,@Param("startTime")String startTime,@Param("endTime")String endTime,@Param("num")int num);

	void updateCardnum(@Param("cardnum")String cardnum, @Param("cardnumNew")String cardnumNew);

	List<IncomeData> findAllIncome1(@Param("content")String content,@Param("startTime")String startTime,@Param("endTime")String endTime,@Param("num")int num);
	
	int findPayByType(int type);
}
