package com.example.soulpaws.repository;

import com.example.soulpaws.model.Adoption;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdoptionRepository extends JpaRepository<Adoption, Long> {}
