package com.soulpaws.controller;

import com.soulpaws.model.AdoptionRequest;
import com.soulpaws.repository.AdoptionRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/adoptions")
public class AdoptionRequestController {

    @Autowired
    private AdoptionRequestRepository adoptionRequestRepository;

    @GetMapping
    @PreAuthorize("hasRole('ADMIN') or hasRole('SHELTER')")
    public List<AdoptionRequest> getAllAdoptions() {
        return adoptionRequestRepository.findAll();
    }

    @PostMapping
    @PreAuthorize("hasRole('USER')")
    public AdoptionRequest createAdoption(@RequestBody AdoptionRequest adoptionRequest) {
        return adoptionRequestRepository.save(adoptionRequest);
    }

    @GetMapping("/{id}")
    public AdoptionRequest getAdoptionById(@PathVariable Long id) {
        return adoptionRequestRepository.findById(id).orElse(null);
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN') or hasRole('SHELTER')")
    public AdoptionRequest updateAdoption(@PathVariable Long id, @RequestBody AdoptionRequest adoptionRequestDetails) {
        AdoptionRequest adoptionRequest = adoptionRequestRepository.findById(id).orElse(null);
        if (adoptionRequest != null) {
            adoptionRequest.setUser(adoptionRequestDetails.getUser());
            adoptionRequest.setPet(adoptionRequestDetails.getPet());
            adoptionRequest.setStatus(adoptionRequestDetails.getStatus());
            return adoptionRequestRepository.save(adoptionRequest);
        }
        return null;
    }
}
