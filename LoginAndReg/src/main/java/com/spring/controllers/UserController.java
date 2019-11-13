package com.spring.controllers;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.beans.User;

import com.spring.service.UserService;

@Controller
public class UserController 
{
	@Autowired
    public UserService userService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	 public ModelAndView list()
	{
	  ModelAndView model = new ModelAndView("viewuser");
	  
	  List<User> list = userService.getUsers();
	  model.addObject("list", list);
	  
	  return model;
	 }
	
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)        
	public String delete(@PathVariable int id)
	{    
		
	        userService.delete(id);
	        
	        
	        return "redirect:/list";    
	 }  
	
	 @RequestMapping(value="/edit/{id}")    
    public String edit(@PathVariable int id,Model m)
 {    
		 User user= userService.getUserById(id);
		 m.addAttribute("user", user); 
         return "edituser";
        } 

    @RequestMapping(value="/edit/{id}/update",method = RequestMethod.POST)    
    public String update(@ModelAttribute("user") User user)
    {    
        userService.update(user);    
        return "redirect:/list";    
    }  
    @RequestMapping(value="/edit/{id}/view",method = RequestMethod.GET)    
    public String back()
    {    
           
        return "redirect:/list";    
    }   
}
