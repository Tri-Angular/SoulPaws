package com.example.soulpaws.controller;

import com.example.soulpaws.model.Shelter;
import com.example.soulpaws.repository.ShelterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/shelters")
public class ShelterController {

    @Autowired
    private ShelterRepository shelterRepository;

    @GetMapping
    public List<Shelter> getAllShelters() {
        return shelterRepository.findAll();
    }

    @PostMapping
    public Shelter createShelter(@RequestBody Shelter shelter) {
        return shelterRepository.save(shelter);
    }

    @GetMapping("/{id}")
    public Shelter getShelterById(@PathVariable Long id) {
        return shelterRepository.findById(id).orElse(null);
    }

    @PutMapping("/{id}")
    public Shelter updateShelter(@PathVariable Long id, @RequestBody Shelter shelterDetails) {
        Shelter shelter = shelterRepository.findById(id).orElse(null);
        if (shelter != null) {
            shelter.setName(shelterDetails.getName());
            shelter.setAddress(shelterDetails.getAddress());
            shelter.setPhone(shelterDetails.getPhone());
            return shelterRepository.save(shelter);
        }
        return null;
    }

    @DeleteMapping("/{id}")
    public void deleteShelter(@PathVariable Long id) {
        shelterRepository.deleteById(id);
    }
}