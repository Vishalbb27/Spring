package com.example.sportyShoes.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.sportyShoes.entity.Shoe;

public interface AdminShoesRepository extends CrudRepository<Shoe, Integer> {

	List<Shoe> getAllByOrderByPriceAsc();

	List<Shoe> getAllByOrderByPriceDsc();


}
