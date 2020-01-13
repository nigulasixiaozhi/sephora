package com.situ.sephora.shopping.controller;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.shopping.domain.Shopping;
import com.situ.sephora.shopping.service.ShoppingService;

@Controller
@RequestMapping("/shopping")
public class ShoppingController {
	@Autowired
	private ShoppingService shoppingService;
	
	/**
	 * 
	 * @param rowId 购物车类id
	 * @return 购物车对象
	 */
	@ResponseBody
	@RequestMapping("/get/{rowId}")
	public Shopping getShopping(@PathVariable Long rowId){
		return this.shoppingService.get(rowId);
	}
	/**
	 * 
	 * @return 选中的商品的总数量和总价
	 */
	@ResponseBody
	@RequestMapping("/checekdPriceAndCount")
	public Shopping checekdPriceAndCount(){
		return this.shoppingService.checekdPriceAndCount();
	}
	/**
	 * 发现当前用户的所有数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/find")
	public List<Shopping> findShopping(){
		return this.shoppingService.find();
	}
	/**
	 * 添加购物车
	 * @param shopping
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/add")
	public Long addShopping(Shopping shopping) {
		return this.shoppingService.save(shopping);
	}
	/**
	 * 更改购物车
	 * @param shopping
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/update")
	public Integer updateShopping(Shopping shopping) {
		return this.shoppingService.update(shopping);
	}
	/**
	 * 更改当前用户所有购物车的选中状态
	 * @param checked 选中状态
	 * @param userId 当前用户id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/updateChecked")
	public Integer updateChecked(Integer checked,Long userId) {
		return this.shoppingService.updateChecked(checked, userId);
	}
	
	/**
	 * 删除一条记录
	 * @param rowId 购物车id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(path = {"/del/{rowId}"},method = RequestMethod.GET )
	public Integer delShopping(@PathVariable Long rowId) {
		return this.shoppingService.del(rowId);
	}
	
	/**
	 * 删除多条数据
	 * @param shoppingId 删除id的数组
	 * @return
	 */
	@ResponseBody
	@RequestMapping(path ={"/del"},method = RequestMethod.POST)
	public Integer delShopping(@RequestParam("shoppingId[]") List<Long> shoppingId) {
		return this.shoppingService.del(shoppingId);
	}
}
