package com.example.soulpaws.repository;

import com.example.soulpaws.model.PetProfile;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PetProfileRepository extends JpaRepository<PetProfile, Long> {}