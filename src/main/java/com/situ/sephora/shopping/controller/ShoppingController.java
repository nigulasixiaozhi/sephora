package com.situ.sephora.shopping.controller;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.shopping.domain.Shopping;
import com.situ.sephora.shopping.service.ShoppingService;

@Controller
@RequestMapping("/shopping")
public class ShoppingController {
	@Autowired
	private ShoppingService shoppingService;
	
	@ResponseBody
	@RequestMapping("/get/{rowId}")
	public Shopping getShopping(@PathVariable Long rowId){
		return this.shoppingService.get(rowId);
	}
	
	@ResponseBody
	@RequestMapping("/checekdPriceAndCount")
	public Shopping checekdPriceAndCount(){
		return this.shoppingService.checekdPriceAndCount();
	}
	
	@ResponseBody
	@RequestMapping("/find")
	public List<Shopping> findShopping(){
		return this.shoppingService.find(null);
	}
	
	@ResponseBody
	@RequestMapping("/add")
	public Long addShopping(Shopping shopping) {
		return this.shoppingService.save(shopping);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Integer updateShopping(Shopping shopping) {
		return this.shoppingService.update(shopping);
	}
	
	@ResponseBody
	@RequestMapping("/updateChecked")
	public Integer updateChecked(Integer checked,Long userId) {
		return this.shoppingService.updateChecked(checked, userId);
	}
	
	@ResponseBody
	@RequestMapping("/del/{rowId}")
	public Integer delShopping(@PathVariable Long rowId) {
		return this.shoppingService.del(rowId);
	}
}
