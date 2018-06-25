package com.yxq.carpark.dao;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yxq.carpark.entity.IllegalInfo;


public interface IllegalInfoDao extends BaseDao<IllegalInfo>{
	public void save(IllegalInfo illegalInfo);

	public List<IllegalInfo> findAllIllegalInfo(@Param("page")int page,@Param("size")int size,@Param("name")String name);

	public IllegalInfo findById(int id);

	public void deleteById(int id);

	public IllegalInfo findByCarnum(@Param("carnum")String carnum,@Param("parkin")Date parkin);

	public IllegalInfo findByCardnum(String cardNum);

	public int findAllIllegalInfoCount(@Param("name")String name);

	public List<IllegalInfo> findByUid(int uid);

	public void updateCardnum(@Param("cardnum")String cardnum, @Param("cardnumNew")String cardnumNew);

	public IllegalInfo findByCardnumParkin(@Param("cardnum")String cardNum, @Param("parkin")Date parkin);
}
