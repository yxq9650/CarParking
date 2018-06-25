package com.yxq.carpark.service;

import java.util.List;

import com.yxq.carpark.entity.CardType;


public interface CardtypeService {

	List<CardType> findAllCardType();

	CardType findCardTypeByid(int typeid);

}
