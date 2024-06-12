package com.soulpaws.controller;

import com.example.soulpaws.model.Shelter;
import com.example.soulpaws.service.ShelterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public Shelter createShelter(@RequestBody Shelter shelter) {
        return shelterService.createShelter(shelter);
    }

    @GetMapping("/{id}")
    public Shelter getShelterById(@PathVariable Long id) {
        return shelterService.getShelterById(id);
    }

    @PutMapping("/{id}")
    public Shelter updateShelter(@PathVariable Long id, @RequestBody Shelter shelterDetails) {
        return shelterService.updateShelter(id, shelterDetails);
    }

    @DeleteMapping("/{id}")
    public void deleteShelter(@PathVariable Long id) {
        shelterService.deleteShelter(id);
    }
}