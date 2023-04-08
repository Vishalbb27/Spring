package com.example.sportyShoes.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.example.sportyShoes.entity.User;

public interface UserRepository extends CrudRepository<User, Integer> {


	Optional<User> findByEmail(String email);

}
