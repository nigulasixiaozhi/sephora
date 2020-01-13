package com.situ.sephora.address.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.address.dao.AddressDao;
import com.situ.sephora.address.domain.Address;
import com.situ.sephora.address.service.AddressService;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressDao;

	@Override
	public Long save(Address address) {
		Integer isDefault = address.getIsDefault();
		if(isDefault==null||isDefault!=1) {
			address.setIsDefault(0);
		}
		address.setActiveFlag(1);
		address.setCreateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		address.setCreateDate(new Date());
		address = PageUtils.buildSearchParam(address);
		return this.addressDao.save(address);
	}

	@Override
	public Address get(Long rowId) {
		return this.addressDao.get(rowId);
	}

	@Override
	public List<Address> findByAddress(Address address) {
		address = PageUtils.buildSearchParam(address);
		return this.addressDao.findByAddress(address);
	}

	@Override
	public Integer update(Address address) {
		Integer isDefault = address.getIsDefault();
		if(isDefault==null||isDefault!=1) {
			address.setIsDefault(0);
		}
		address.setUpdateBy(ConfigUtils.SESSION_USER_LOGIN);
		address.setUpdateDate(new Date());
		address = PageUtils.buildSearchParam(address);
		this.addressDao.update(address);
		return 1;
	}
	
	@Override
	public Integer addEditDefault(Long userId) {
			this.addressDao.addEditDefault(userId);
		return 1;
	}
	
	@Override
	public Integer clickDefault(Long rowId,Long userId) {
			this.addressDao.addEditDefault(userId);
			this.addressDao.clickDefault(rowId);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {
		this.addressDao.del(rowId);
		return 1;
	}

	@Override
	public List<Address> findArea(Long parCode) {
		return this.addressDao.findArea(parCode);
	}

	

}
