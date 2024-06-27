import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { PetService } from 'src/app/services/api/pet.service';
import { Shelter } from 'src/app/models/shelter.model';

@Component({
  selector: 'app-pet-search',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './pet-search.component.html',
  styleUrls: ['./pet-search.component.css']
})
export class PetSearchComponent implements OnInit {
  @Output() filterEvent = new EventEmitter<any>();

  filterCriteria = {
    searchText: '',
    breed: '',
    gender: '',
    size: '',
    age: ''
  };

  breeds: string[] = [];
  shelters: Shelter[] = [];

  constructor(private petService: PetService) {}

  ngOnInit(): void {
    this.petService.getAllPets().subscribe((pets: any[]) => {
      this.breeds = [...new Set(pets.map(pet => pet.breed))];
    });
  }

  onSearch(): void {
    this.filterEvent.emit(this.filterCriteria);
  }
}
