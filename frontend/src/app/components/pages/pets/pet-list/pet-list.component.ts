import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { PetSearchComponent } from '../pet-search/pet-search.component';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';
import { AuthService } from 'src/app/services/api/auth.service';
import { AdoptionRequest } from 'src/app/models/adoption-request.model';

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
  successMessage: string | null = null;
  errorMessage: string | null = null;

  filterCriteria = {
    searchText: '',
    breed: '',
    gender: '',
    size: '',
    age: ''
  };

  constructor(
    private petService: PetService,
    private adoptionRequestService: AdoptionRequestService,
    private authService: AuthService
  ) {}

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
        pet.shelter.province.toLowerCase().includes(searchText) ||
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
    const currentUser = this.authService.getCurrentUser();
    if (currentUser) {
      const adoptionRequest: AdoptionRequest = {
        user: { id: currentUser.id },
        pet: { id: petId },
        status: 'PENDING'
      };
      this.adoptionRequestService.createAdoptionRequest(adoptionRequest).subscribe(
        response => {
          console.log('Adoption request initiated', response);
          this.successMessage = 'Adoption request successfully created!';
          this.errorMessage = null;
        },
        error => {
          console.error('Error initiating adoption request', error);
          if (error.error instanceof ErrorEvent) {
            console.error('Client-side error:', error.error.message);
          } else {
            console.error(`Server-side error: ${error.status} - ${error.message}`);
          }
          this.errorMessage = 'Failed to create adoption request. Please try again later.';
          this.successMessage = null;
        }
      );
    } else {
      console.error('User is not authenticated');
      this.errorMessage = 'You must be logged in to adopt a pet.';
      this.successMessage = null;
    }
  }

  isAdmin(): boolean {
    return this.authService.isAdmin();
  }

  isShelter(): boolean {
    return this.authService.isShelter();
  }

  isUser(): boolean {
    return this.authService.isUser();
  }

  isShelterOrAdmin(): boolean {
    return this.isAdmin() || this.isShelter();
  }

  isOwner(petOwnerEmail: string): boolean {
    const currentUser = this.authService.getCurrentUser();
    return currentUser ? currentUser.email === petOwnerEmail : false;
  }
}