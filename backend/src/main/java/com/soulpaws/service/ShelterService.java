package com.soulpaws.service;

import com.soulpaws.model.Shelter;
import com.soulpaws.repository.ShelterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShelterService {

    @Autowired
    private ShelterRepository shelterRepository;

    public List<Shelter> getAllShelters() {
        return shelterRepository.findAll();
    }

    public Shelter getShelterById(Long id) {
        return shelterRepository.findById(id).orElse(null);
    }

    public Shelter createShelter(Shelter shelter) {
        return shelterRepository.save(shelter);
    }

    public Shelter updateShelter(Long id, Shelter shelterDetails) {
        Shelter shelter = shelterRepository.findById(id).orElse(null);
        if (shelter != null) {
            shelter.setName(shelterDetails.getName());
            shelter.setAddress(shelterDetails.getAddress());
            shelter.setPhone(shelterDetails.getPhone());
            return shelterRepository.save(shelter);
        }
        return null;
    }

    public void deleteShelter(Long id) {
        shelterRepository.deleteById(id);
    }
}