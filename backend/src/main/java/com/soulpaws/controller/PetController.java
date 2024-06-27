package com.soulpaws.controller;

import com.soulpaws.model.Pet;
import com.soulpaws.model.Shelter;
import com.soulpaws.model.Breed;
import com.soulpaws.service.PetService;
import com.soulpaws.service.ShelterService;
import com.soulpaws.service.BreedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/pets")
public class PetController {

    @Autowired
    private PetService petService;

    @Autowired
    private ShelterService shelterService;

    @Autowired
    private BreedService breedService;

    @GetMapping
    public List<Pet> getAllPets() {
        return petService.getAllPets();
    }

    @PostMapping
    public Pet createPet(@RequestBody Pet pet) {
        System.out.println("Received pet: " + pet);

        if (pet.getShelter() != null && pet.getShelter().getId() != null) {
            Optional<Shelter> shelter = shelterService.findById(pet.getShelter().getId());
            shelter.ifPresent(pet::setShelter);
        }

        if (pet.getBreed() != null && pet.getBreed().getId() != null) {
            Optional<Breed> breed = breedService.findById(pet.getBreed().getId());
            breed.ifPresent(pet::setBreed);
        }

        Pet savedPet = petService.createPet(pet);
        System.out.println("Saved pet: " + savedPet);
        return savedPet;
    }

    @GetMapping("/{id}")
    public Pet getPetById(@PathVariable Long id) {
        return petService.getPetById(id);
    }

    @PutMapping("/{id}")
    public Pet updatePet(@PathVariable Long id, @RequestBody Pet petDetails) {
        return petService.updatePet(id, petDetails);
    }

    @DeleteMapping("/{id}")
    public void deletePet(@PathVariable Long id) {
        petService.deletePet(id);
    }
}