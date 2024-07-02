package com.soulpaws.service;

import com.soulpaws.model.AdoptionRequest;
import com.soulpaws.repository.AdoptionRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdoptionRequestService {

    @Autowired
    private AdoptionRequestRepository adoptionRequestRepository;

    public List<AdoptionRequest> getAllAdoptionRequests() {
        return adoptionRequestRepository.findAll();
    }

    public AdoptionRequest getAdoptionRequestById(Long id) {
        return adoptionRequestRepository.findById(id).orElse(null);
    }

    public AdoptionRequest createAdoptionRequest(AdoptionRequest adoptionRequest) {
        return adoptionRequestRepository.save(adoptionRequest);
    }

    public AdoptionRequest updateAdoptionRequest(Long id, AdoptionRequest adoptionRequestDetails) {
        AdoptionRequest adoptionRequest = adoptionRequestRepository.findById(id).orElse(null);
        if (adoptionRequest != null) {
            adoptionRequest.setUser(adoptionRequestDetails.getUser());
            adoptionRequest.setPet(adoptionRequestDetails.getPet());
            adoptionRequest.setStatus(adoptionRequestDetails.getStatus());
            return adoptionRequestRepository.save(adoptionRequest);
        }
        return null;
    }

    public void deleteAdoptionRequest(Long id) {
        adoptionRequestRepository.deleteById(id);
    }
}