package com.situ.sephora.address.service;

import java.util.List;

import com.situ.sephora.address.domain.Address;

public interface AddressService {

	Long save(Address address);
	
	Address getByAddress(Address address);
	
	List<Address> findByAddress(Address address);
	
	Integer update(Address address);
	
	Integer del(Long rowId);
	
}
