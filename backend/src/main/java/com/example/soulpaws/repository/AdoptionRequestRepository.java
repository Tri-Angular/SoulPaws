package com.example.soulpaws.repository;

import com.example.soulpaws.model.AdoptionRequest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdoptionRepository extends JpaRepository<AdoptionRequest, Long> {}
