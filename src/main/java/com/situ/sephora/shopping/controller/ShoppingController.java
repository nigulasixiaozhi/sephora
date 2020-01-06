package com.situ.sephora.shopping.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.situ.sephora.shopping.service.ShoppingService;

@Controller
public class ShoppingController {
	@Autowired
	private ShoppingService shoppingService;
	
}
