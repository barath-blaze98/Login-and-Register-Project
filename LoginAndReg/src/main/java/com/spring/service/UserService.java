package com.spring.service;

import java.util.List;

import com.spring.beans.Login;
import com.spring.beans.User;

public interface UserService 
{
	void register(User user);

	User validateUser(Login login);

	List<User> getUsers();
	
	 int delete(int id);

	 int update(User user);

	 User getUserById(int id);
	 
	 User unamecheck(User user);
}
