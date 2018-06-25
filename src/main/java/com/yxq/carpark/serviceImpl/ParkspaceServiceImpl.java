package com.yxq.carpark.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxq.carpark.dao.ParkspaceDao;
import com.yxq.carpark.entity.ParkSpace;
import com.yxq.carpark.service.ParkspaceService;


@Service
public class ParkspaceServiceImpl implements ParkspaceService {

	@Autowired
	private ParkspaceDao parkspaceDao;
	private ParkSpace parkSpace;
	public void addParkspace(int count) {
		int max=parkspaceDao.findMaxSpace();
		if(max==0)
		{
			for(int i=1;i<=count;i++)
			{
				parkSpace.setParkid(i);
				parkspaceDao.save(parkSpace);
			}
		}else {
			for(int i=max+1;i<=count+max;i++)
			{
				parkSpace.setParkid(i);
				parkspaceDao.save(parkSpace);
			}
		}
	}
	public List<ParkSpace> findAllParkspace(int page,int size) {
		return parkspaceDao.findAllParkspace(page,size);
	}
	public void changeStatus(int id, int status) {
		parkspaceDao.changeStatus(id, status);
	}
	public List<ParkSpace> findParkspaceByTag(int tag,int page,int size) {
		return parkspaceDao.findParkspaceByTag(tag,page,size);
	}
	public void changeStatusByParkNum(int parkNum, int status) {
		parkspaceDao.changeStatusByParkNum(parkNum, status);
		
	}
	public int findAllParkspaceCount(int tag) {
		return parkspaceDao.findAllParkspaceCount(tag);
	}
	@Override
	public int findNowParkspace(int status) {
		// TODO Auto-generated method stub
		return parkspaceDao.findNowParkspace(status);
	}

}
