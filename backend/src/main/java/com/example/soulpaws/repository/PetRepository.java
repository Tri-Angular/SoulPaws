package com.example.soulpaws.repository;

import com.example.soulpaws.model.Pet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PetRepository extends JpaRepository<Pet, Long> {}

