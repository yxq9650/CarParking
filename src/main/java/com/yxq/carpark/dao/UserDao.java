package com.yxq.carpark.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yxq.carpark.entity.User;




public interface UserDao extends BaseDao<User>{

	//添加用户
	public void save(User user);
	//通过id查用户
	public User findUserById(int id);
	//通过用户名查用户
	public User findUserByUserName(String  username);
	//通过username，cardid添加用户（直接添加停车卡时）
	public void saveByaddDepotCard(@Param("username")String username,@Param("name")String name, @Param("cardid")int cardid);
	//通过停车卡id查询用户
	public User findUserByCardid(@Param("cardid")int cardid);
	public List<User> findAllUser(@Param("page")int page,@Param("size")int size);
	public void deleteUserByCardid(@Param("cardid")int cardid);
	public List<User> findUsersByRole(@Param("role")int role,@Param("page")int page,@Param("size")int size);
	public List<User> findUsersByRoleMan(@Param("role")int role,@Param("page")int page,@Param("size")int size);
	public void update(User user);
	public void delUserById(int uid);
	public int findAllUserCount(@Param("role")int role);
	public int findAllUserCountMan(@Param("role")int role);
	public List<User> finAllUserByRole(int role);

}
