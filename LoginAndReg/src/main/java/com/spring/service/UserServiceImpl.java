package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.beans.Login;
import com.spring.beans.User;
import com.spring.dao.UserDAO;


public class UserServiceImpl implements UserService
{
	  @Autowired
	  public UserDAO userDao;

	  public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	public void register(User user) 
	  {
	    userDao.register(user);
	  }

	  public User validateUser(Login login) 
	  {
	    return userDao.validateUser(login);
	  }

	public List<User> getUsers() 
	{
		
		return userDao.getUsers();
	}

	@Override
	public int delete(int id) {
		
		return userDao.delete(id);
	}

	@Override
	public int update(User user) {
		
		return userDao.update(user);
	}

	@Override
	public User getUserById(int id) {
		return userDao.getUserById(id);
	}

	@Override
	public User unamecheck(User user) {
		
		
		return userDao.unamecheck(user);
	}

	
	  
}

