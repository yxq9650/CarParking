package com.yxq.carpark.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.EmailDao;
import com.yxq.carpark.dto.EmailData;
import com.yxq.carpark.entity.Email;
import com.yxq.carpark.service.EmailService;


@Service
public class EmailServiceImpl implements EmailService{

	@Autowired
	private EmailDao emailDao;
	public void addEmail(Email email) {
		emailDao.addEmial(email);
	}
	public Email findById(int id) {
		return emailDao.findById(id);
	}
	public void updateManReadById(int id) {
		emailDao.updateManReadById(id);
	}
	public List<EmailData> findByUserId(int page,int size,int id,int role,String content,Integer tag) {
		return emailDao.findByUserId(page,size,id,role,content,tag);
	}
	public int findAllEmailCountByUser(int uid,int role) {
		return emailDao.findAllEmailCountByUser(uid,role);
	}
	public void updateEmail(Email email) {
		emailDao.updateEmail(email);
	}
	@Override
	public List<EmailData> findByToId(int id) {
		// TODO Auto-generated method stub
		return emailDao.findByToId(id);
	}
	@Override
	public void deleteEmail(int id) {
		// TODO Auto-generated method stub
		emailDao.deleteEmail(id);
	}

}
