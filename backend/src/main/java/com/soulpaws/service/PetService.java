package com.soulpaws.service;

import com.soulpaws.model.Pet;
import com.soulpaws.repository.PetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetService {

    @Autowired
    private PetRepository petRepository;

    public List<Pet> getAllPets() {
        return petRepository.findAll();
    }

    public Pet getPetById(Long id) {
        return petRepository.findById(id).orElse(null);
    }

    public Pet createPet(Pet pet) {
        return petRepository.save(pet);
    }

    public Pet updatePet(Long id, Pet petDetails) {
        Pet pet = petRepository.findById(id).orElse(null);
        if (pet != null) {
            pet.setName(petDetails.getName());
            pet.setAge(petDetails.getAge());
            pet.setBreed(petDetails.getBreed());
            return petRepository.save(pet);
        }
        return null;
    }

    public void deletePet(Long id) {
        petRepository.deleteById(id);
    }
}