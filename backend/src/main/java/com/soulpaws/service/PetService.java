package com.soulpaws.service;

import com.soulpaws.model.Pet;
import com.soulpaws.model.Shelter;
import com.soulpaws.model.Breed;
import com.soulpaws.repository.PetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PetService {

    @Autowired
    private PetRepository petRepository;

    @Autowired
    private ShelterService shelterService;

    @Autowired
    private BreedService breedService;

    public List<Pet> getAllPets() {
        return petRepository.findAll();
    }

    public Pet getPetById(Long id) {
        return petRepository.findById(id).orElse(null);
    }

    public Pet createPet(Pet pet) {
        if (pet.getShelter() != null && pet.getShelter().getId() != null) {
            Optional<Shelter> shelter = shelterService.findById(pet.getShelter().getId());
            shelter.ifPresent(pet::setShelter);
        }

        if (pet.getBreed() != null && pet.getBreed().getId() != null) {
            Optional<Breed> breed = breedService.findById(pet.getBreed().getId());
            breed.ifPresent(pet::setBreed);
        }

        return petRepository.save(pet);
    }

    public Pet updatePet(Long id, Pet petDetails) {
        Pet pet = petRepository.findById(id).orElse(null);
        if (pet != null) {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String currentUsername = authentication.getName();

            if (pet.getShelter().getEmail().equals(currentUsername) || authentication.getAuthorities().stream()
                    .anyMatch(role -> role.getAuthority().equals("ROLE_ADMIN"))) {
                pet.setName(petDetails.getName());
                pet.setAge(petDetails.getAge());
                pet.setBreed(petDetails.getBreed());
                pet.setShelter(petDetails.getShelter());
                pet.setSize(petDetails.getSize());
                pet.setGender(petDetails.getGender());
                pet.setImage(petDetails.getImage());
                pet.setDescription(petDetails.getDescription());
                pet.setUniqueFeatures(petDetails.getUniqueFeatures());
                pet.setAvailabilityStatus(petDetails.getAvailabilityStatus());
                return petRepository.save(pet);
            }
        }
        return null;
    }

    public void deletePet(Long id) {
        Pet pet = petRepository.findById(id).orElse(null);
        if (pet != null) {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String currentUsername = authentication.getName();

            if (pet.getShelter().getEmail().equals(currentUsername) || authentication.getAuthorities().stream()
                    .anyMatch(role -> role.getAuthority().equals("ROLE_ADMIN"))) {
                petRepository.deleteById(id);
            }
        }
    }
}