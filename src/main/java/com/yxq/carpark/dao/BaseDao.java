package com.yxq.carpark.dao;

import java.io.Serializable;


public interface BaseDao <M extends Serializable>{
	public void save(M m);
}
