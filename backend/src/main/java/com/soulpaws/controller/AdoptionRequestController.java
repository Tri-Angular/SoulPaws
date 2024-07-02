package com.soulpaws.controller;

import com.soulpaws.model.AdoptionRequest;
import com.soulpaws.model.Pet;
import com.soulpaws.model.User;
import com.soulpaws.repository.AdoptionRequestRepository;
import com.soulpaws.repository.PetRepository;
import com.soulpaws.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/adoptions")
public class AdoptionRequestController {

    @Autowired
    private AdoptionRequestRepository adoptionRequestRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PetRepository petRepository;

    @GetMapping
    @PreAuthorize("hasRole('ADMIN') or hasRole('SHELTER')")
    public List<AdoptionRequest> getAllAdoptions() {
        return adoptionRequestRepository.findAll();
    }

    @PostMapping
    @PreAuthorize("hasRole('USER')")
    public AdoptionRequest createAdoption(@RequestBody AdoptionRequest adoptionRequest) {
        User user = userRepository.findById(adoptionRequest.getUser().getId())
                .orElseThrow(() -> new RuntimeException("User not found"));
        Pet pet = petRepository.findById(adoptionRequest.getPet().getId())
                .orElseThrow(() -> new RuntimeException("Pet not found"));

        adoptionRequest.setUser(user);
        adoptionRequest.setPet(pet);
        adoptionRequest.setStatus(AdoptionRequest.Status.PENDING);

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
