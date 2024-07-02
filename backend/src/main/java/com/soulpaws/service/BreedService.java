package com.soulpaws.service;

import com.soulpaws.model.Breed;
import com.soulpaws.repository.BreedRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BreedService {

    @Autowired
    private BreedRepository breedRepository;

    public List<Breed> findAllBreeds() {
        return breedRepository.findAll();
    }

    public Optional<Breed> findById(Long id) {
        return breedRepository.findById(id);
    }

    public Breed saveBreed(Breed breed) {
        return breedRepository.save(breed);
    }

    public void deleteBreed(Long id) {
        breedRepository.deleteById(id);
    }
}
