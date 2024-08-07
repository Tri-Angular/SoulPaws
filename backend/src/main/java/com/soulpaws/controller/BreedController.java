package com.soulpaws.controller;

import com.soulpaws.model.Breed;
import com.soulpaws.service.BreedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/breeds")
public class BreedController {

    @Autowired
    private BreedService breedService;

    @GetMapping
    @PreAuthorize("hasRole('USER') or hasRole('SHELTER') or hasRole('ADMIN')")
    public ResponseEntity<List<Breed>> getAllBreeds() {
        List<Breed> breeds = breedService.findAllBreeds();
        return ResponseEntity.ok(breeds);
    }

    @GetMapping("/{id}")
    @PreAuthorize("hasRole('USER') or hasRole('SHELTER') or hasRole('ADMIN')")
    public ResponseEntity<Breed> getBreedById(@PathVariable Long id) {
        Optional<Breed> breed = breedService.findById(id);
        return breed.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    @PreAuthorize("hasRole('SHELTER') or hasRole('ADMIN')")
    public ResponseEntity<Breed> createBreed(@RequestBody Breed breed) {
        Breed savedBreed = breedService.saveBreed(breed);
        return ResponseEntity.ok(savedBreed);
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Breed> updateBreed(@PathVariable Long id, @RequestBody Breed breedDetails) {
        Optional<Breed> optionalBreed = breedService.findById(id);
        if (optionalBreed.isPresent()) {
            Breed breed = optionalBreed.get();
            breed.setBreed(breedDetails.getBreed());
            breed.setSpecies(breedDetails.getSpecies());
            Breed updatedBreed = breedService.saveBreed(breed);
            return ResponseEntity.ok(updatedBreed);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Void> deleteBreed(@PathVariable Long id) {
        breedService.deleteBreed(id);
        return ResponseEntity.ok().build();
    }
}