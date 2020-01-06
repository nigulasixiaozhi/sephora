package com.situ.sephora.address.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.sephora.address.service.AddressService;

@Controller
public class AddressController {
	@Autowired
	private AddressService addressService;
	
}
