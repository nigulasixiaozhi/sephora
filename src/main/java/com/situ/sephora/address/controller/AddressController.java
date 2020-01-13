package com.situ.sephora.address.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.address.domain.Address;
import com.situ.sephora.address.service.AddressService;
import com.situ.sephora.user.domain.User;
import com.situ.sephora.utils.ConfigUtils;

@Controller
@RequestMapping("/address")
public class AddressController {
	@Autowired
	private AddressService addressService;

	@ResponseBody
	@RequestMapping("/findAddressList")
	public List<Address> findAddressList(Address address) {
		return this.addressService.findByAddress(address);
	}

	@ResponseBody
	@RequestMapping("/add")
	public Long addAddress(Address address) {
		return this.addressService.save(address);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Integer updateAddress(Address address) {
		return this.addressService.update(address);
	}

	@ResponseBody
	@RequestMapping("/findArea/{parentCode}")
	public List<Address> findArea(@PathVariable("parentCode") Long parCode) {
		return this.addressService.findArea(parCode);
	}

	@ResponseBody
	@RequestMapping("/addEditDefault/{userId}")
	public Integer addEditDefault(@PathVariable Long userId) {
		return this.addressService.addEditDefault(userId);
	}
	
	@ResponseBody
	@RequestMapping("/clickDefault")
	public Integer clickDefault(Long rowId,HttpServletRequest request) {
		User user =(User) request.getSession().getAttribute(ConfigUtils.SESSION_USER_LOGIN);
		Long userId = user.getRowId();
		return this.addressService.clickDefault(rowId, userId);
	}
	
	@ResponseBody
	@RequestMapping("/del/{rowId}")
	public Integer delAddress(@PathVariable Long rowId) {
		return this.addressService.del(rowId);
	}
}
