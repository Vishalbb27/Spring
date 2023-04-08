package com.example.sportyShoes.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.sportyShoes.entity.Purchase;


public interface PurchaseDetailsRepository extends CrudRepository<Purchase, Integer> {
	
}
