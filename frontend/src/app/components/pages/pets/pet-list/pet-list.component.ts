import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { PetSearchComponent } from '../pet-search/pet-search.component';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';

@Component({
  selector: 'app-pet-list',
  standalone: true,
  imports: [CommonModule, RouterModule, PetSearchComponent],
  templateUrl: './pet-list.component.html',
  styleUrls: ['./pet-list.component.css']
})
export class PetListComponent implements OnInit {
  pets: Pet[] = [];
  filteredPets: Pet[] = [];

  filterCriteria = {
    searchText: '',
    breed: '',
    gender: '',
    size: '',
    age: ''
  };

  constructor(private petService: PetService, private adoptionRequestService: AdoptionRequestService) {}

  ngOnInit(): void {
    this.petService.getAllPets().subscribe((data: Pet[]) => {
      this.pets = data;
      this.applyFilter(this.filterCriteria);
    });
  }

  applyFilter(filterCriteria: any): void {
    this.filterCriteria = filterCriteria;
    const searchText = filterCriteria.searchText.toLowerCase();

    this.filteredPets = this.pets.filter(pet => {
      const matchesSearchText = searchText === '' || 
        pet.name.toLowerCase().includes(searchText) ||
        pet.breed.breed.toLowerCase().includes(searchText) ||
        pet.gender.toLowerCase().includes(searchText) ||
        pet.size.toLowerCase().includes(searchText);

      const matchesBreed = filterCriteria.breed === '' || pet.breed.id === +filterCriteria.breed;
      const matchesGender = filterCriteria.gender === '' || pet.gender === filterCriteria.gender;
      const matchesSize = filterCriteria.size === '' || pet.size === filterCriteria.size;
      const matchesAge = pet.age >= filterCriteria.minAge && pet.age <= filterCriteria.maxAge;

      return matchesSearchText && matchesBreed && matchesGender && matchesSize && matchesAge;
  });
    
    if (this.filteredPets.length === 0) {
      this.filteredPets = [...this.pets];
    }
  }

  initiateAdoption(petId: number): void {
    this.adoptionRequestService.createAdoptionRequest({ petId }).subscribe(response => {
      console.log('Adoption request initiated', response);
    }, error => {
      console.error('Error initiating adoption request', error);
    });
  }
}
