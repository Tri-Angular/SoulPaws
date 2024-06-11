package com.example.soulpaws.controller;

import com.example.soulpaws.model.AdoptionRequest;
import com.example.soulpaws.repository.AdoptionRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/adoptions")
public class AdoptionRequestController {

    @Autowired
    private AdoptionRequestRepository adoptionRequestRepository;

    @GetMapping
    public List<AdoptionRequest> getAllAdoptions() {
        return adoptionRequestRepository.findAll();
    }

    @PostMapping
    public AdoptionRequest createAdoption(@RequestBody AdoptionRequest adoptionRequest) {
        return adoptionRequestRepository.save(adoptionRequest);
    }

    @GetMapping("/{id}")
    public AdoptionRequest getAdoptionById(@PathVariable Long id) {
        return adoptionRequestRepository.findById(id).orElse(null);
    }

    @PutMapping("/{id}")
    public AdoptionRequest updateAdoption(@PathVariable Long id, @RequestBody AdoptionRequest adoptionRequestDetails) {
        AdoptionRequest adoptionRequest = adoptionRequestRepository.findById(id).orElse(null);
        if (adoptionRequest != null) {
            adoptionRequest.setUser(adoptionRequestDetails.getUser());
            adoptionRequest.setPetProfile(adoptionRequestDetails.getPetProfile());
            adoptionRequest.setStatus(adoptionRequestDetails.getStatus());
            return adoptionRequestRepository.save(adoptionRequest);
        }
        return null;
    }
}
