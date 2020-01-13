package com.situ.sephora.address.service;

import java.util.List;

import com.situ.sephora.address.domain.Address;

public interface AddressService {

	Long save(Address address);
	
	Address get(Long rowId);
	
	List<Address> findByAddress(Address address);
	
	List<Address> findArea(Long parCode);
	
	Integer update(Address address);
	
	Integer addEditDefault(Long userId);
	
	Integer clickDefault(Long rowId,Long userId);
	
	Integer del(Long rowId);
	
}
