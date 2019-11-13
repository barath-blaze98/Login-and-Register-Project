package com.spring.dao;


import java.util.List;

import com.spring.beans.Login;
import com.spring.beans.User;

public interface UserDAO 
{
 void register(User user);
 
 User validateUser(Login login);
 
 List<User> getUsers();
 
 int delete(int id);

 int update(User user);

 User getUserById(int id);
 
 User unamecheck(User user);
}
