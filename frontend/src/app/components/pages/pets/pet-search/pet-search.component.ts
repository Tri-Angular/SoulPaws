import { Component } from '@angular/core';
import { PetService } from '../../../../services/api/pet.service';
import { Pet } from '../../../../models/pet.model';

@Component({
  selector: 'app-pet-search',
  templateUrl: './pet-search.component.html',
  styleUrls: ['./pet-search.component.css']
})
export class PetSearchComponent {
  searchTerm: string = '';
  filteredPets: Pet[] = [];

  constructor(private petService: PetService) {}

  onSearch(): void {
    this.petService.searchPets(this.searchTerm).subscribe((data: Pet[]) => {
      this.filteredPets = data;
    });
  }
}