package com.example.soulpaws.controller;

import com.example.soulpaws.model.PetProfile;
import com.example.soulpaws.service.PetProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/petprofiles")
public class PetProfileController {

    @Autowired
    private PetProfileService petProfileService;

    @GetMapping
    public ResponseEntity<List<PetProfile>> getAllPetProfiles() {
        return ResponseEntity.ok(petProfileService.getAllPetProfiles());
    }

    @GetMapping("/{id}")
    public ResponseEntity<PetProfile> getPetProfileById(@PathVariable Long id) {
        return ResponseEntity.ok(petProfileService.getPetProfileById(id));
    }

    @PostMapping
    public ResponseEntity<PetProfile> createPetProfile(@RequestBody PetProfile petProfile) {
        return ResponseEntity.ok(petProfileService.createPetProfile(petProfile));
    }

    @PutMapping
    public ResponseEntity<PetProfile> updatePetProfile(@RequestBody PetProfile petProfile) {
        return ResponseEntity.ok(petProfileService.updatePetProfile(petProfile));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePetProfile(@PathVariable Long id) {
        petProfileService.deletePetProfile(id);
        return ResponseEntity.ok().build();
    }
}