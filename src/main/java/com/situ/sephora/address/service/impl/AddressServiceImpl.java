package com.situ.sephora.address.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.sephora.address.dao.AddressDao;
import com.situ.sephora.address.domain.Address;
import com.situ.sephora.address.service.AddressService;
import com.situ.sephora.utils.PageUtils;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressDao;

	@Override
	public Long save(Address address) {
		return null;
	}

	@Override
	public Address getByAddress(Address address) {
		address = PageUtils.buildSearchParam(address);
		return this.addressDao.getByAddress(address);
	}

	@Override
	public List<Address> findByAddress(Address address) {
		address = PageUtils.buildSearchParam(address);
		return this.addressDao.findByAddress(address);
	}

	@Override
	public Integer update(Address address) {
		address = PageUtils.buildSearchParam(address);
		this.addressDao.update(address);
		return 1;
	}

	@Override
	public Integer del(Long rowId) {
		this.addressDao.del(rowId);
		return 1;
	}

}
