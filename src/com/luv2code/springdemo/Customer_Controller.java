package com.luv2code.springdemo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luv2code.springdemo.dao.CustomerDao;
import com.luv2code.springdemo.entity.Customer;

@Controller
@RequestMapping("/customer")
public class Customer_Controller {

	@Autowired
	private CustomerDao customerdao;
	
	@RequestMapping("/list")
	public  String listCustomers(Model themodel)
	{
		
		List<Customer> thecustomer=customerdao.getCustomers();
		
		themodel.addAttribute("customers",thecustomer);
		
		
		return "list-customers";
	}
}
