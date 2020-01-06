package com.situ.sephora.address.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.sephora.address.domain.Address;

@Repository
public interface AddressDao {

	Address getByAddress(Address address);
	
	List<Address> findByAddress(Address address);
	
	Long save(Address address);
	
	void update(Address address);
	
	void del(Long rowId);
}
