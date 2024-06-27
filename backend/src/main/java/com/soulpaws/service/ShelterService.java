package com.soulpaws.service;

import com.soulpaws.model.Shelter;
import com.soulpaws.repository.ShelterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ShelterService {

    @Autowired
    private ShelterRepository shelterRepository;

    public List<Shelter> getAllShelters() {
        return shelterRepository.findAll();
    }

    public Optional<Shelter> findById(Long id) {
        return shelterRepository.findById(id);
    }

    public Shelter createShelter(Shelter shelter) {
        return shelterRepository.save(shelter);
    }

    public Shelter updateShelter(Long id, Shelter shelterDetails) {
        Optional<Shelter> optionalShelter = shelterRepository.findById(id);
        if (optionalShelter.isPresent()) {
            Shelter shelter = optionalShelter.get();
            shelter.setName(shelterDetails.getName());
            shelter.setAddress(shelterDetails.getAddress());
            shelter.setPhone(shelterDetails.getPhone());
            shelter.setEmail(shelterDetails.getEmail());
            return shelterRepository.save(shelter);
        }
        return null;
    }

    public void deleteShelter(Long id) {
        shelterRepository.deleteById(id);
    }
}