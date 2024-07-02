package com.soulpaws.controller;

import com.soulpaws.model.Shelter;
import com.soulpaws.service.ShelterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/shelters")
public class ShelterController {

    @Autowired
    private ShelterService shelterService;

    @GetMapping
    public List<Shelter> getAllShelters() {
        return shelterService.getAllShelters();
    }

    @PostMapping
    @PreAuthorize("hasRole('ADMIN') or hasRole('SHELTER')")
    public Shelter createShelter(@RequestBody Shelter shelter) {
        return shelterService.createShelter(shelter);
    }

    @GetMapping("/{id}")
    public Shelter getShelterById(@PathVariable Long id) {
        Optional<Shelter> shelter = shelterService.findById(id);
        return shelter.orElse(null);
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasRole('SHELTER') or hasRole('ADMIN')")
    public Shelter updateShelter(@PathVariable Long id, @RequestBody Shelter shelterDetails) {
        return shelterService.updateShelter(id, shelterDetails);
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public void deleteShelter(@PathVariable Long id) {
        shelterService.deleteShelter(id);
    }
}
