package com.example.RestAPIOne;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepository extends JpaRepository<PersonEntity,Integer>{

	Optional<PersonEntity> findById(int personId);

}
