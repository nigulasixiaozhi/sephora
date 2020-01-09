package com.situ.sephora.address.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.sephora.address.domain.Address;

@Repository
public interface AddressDao {

	Address get(Address address);
	
	List<Address> findByAddress(Address address);
	
	List<Address> findArea(Long parCode);
	
	Long save(Address address);
	
	void addEditDefault(Long userId);
	
	void clickDefault(Long rowId);
	
	void update(Address address);
	
	void del(Long rowId);
}
