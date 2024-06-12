package com.soulpaws.repository;

import com.soulpaws.model.PetProfile;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PetProfileRepository extends JpaRepository<PetProfile, Long> {}