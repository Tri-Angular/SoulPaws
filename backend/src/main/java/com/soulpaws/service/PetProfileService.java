package com.soulpaws.service;

import com.soulpaws.model.PetProfile;
import com.soulpaws.repository.PetProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetProfileService {

    @Autowired
    private PetProfileRepository petProfileRepository;

    // Métodos CRUD y cualquier otra lógica de negocio necesaria
    public List<PetProfile> getAllPetProfiles() {
        return petProfileRepository.findAll();
    }

    public PetProfile getPetProfileById(Long id) {
        return petProfileRepository.findById(id).orElse(null);
    }

    public PetProfile createPetProfile(PetProfile petProfile) {
        return petProfileRepository.save(petProfile);
    }

    public PetProfile updatePetProfile(PetProfile petProfile) {
        return petProfileRepository.save(petProfile);
    }

    public void deletePetProfile(Long id) {
        petProfileRepository.deleteById(id);
    }
}