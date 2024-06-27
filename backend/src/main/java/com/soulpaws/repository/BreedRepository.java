package com.soulpaws.repository;

import com.soulpaws.model.Breed;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BreedRepository extends JpaRepository<Breed, Long> {}
