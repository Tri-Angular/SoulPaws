package com.example.soulpaws.controller;


import com.example.soulpaws.model.Adoption;
import com.example.soulpaws.repository.AdoptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/adoptions")
public class AdoptionController {

    @Autowired
    private AdoptionRepository adoptionRepository;

    @GetMapping
    public List<Adoption> getAllAdoptions() {
        return adoptionRepository.findAll();
    }

    @PostMapping
    public Adoption createAdoption(@RequestBody Adoption adoption) {
        return adoptionRepository.save(adoption);
    }

    @GetMapping("/{id}")
    public Adoption getAdoptionById(@PathVariable Long id) {
        return adoptionRepository.findById(id).orElse(null);
    }

    @PutMapping("/{id}")
    public Adoption updateAdoption(@PathVariable Long id, @RequestBody Adoption adoptionDetails) {
        Adoption adoption = adoptionRepository.findById(id).orElse(null);
        if (adoption != null) {
            adoption.setUser(adoptionDetails.getUser());
            adoption.setPet(adoptionDetails.getPet());
            adoption.setAdoptionDate(adoptionDetails.getAdoptionDate());
            return adoptionRepository.save(adoption);
        }
        return null;
    }

    @DeleteMapping("/{id}")
    public void deleteAdoption(@PathVariable Long id) {
        adoptionRepository.deleteById(id);
    }
}