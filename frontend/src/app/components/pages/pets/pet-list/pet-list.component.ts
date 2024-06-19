import { Component, OnInit } from '@angular/core';
import { PetService } from '../../../../services/api/pet.service';
import { Pet } from '../../../../models/pet.model';

@Component({
  selector: 'app-pet-list',
  templateUrl: './pet-list.component.html',
  styleUrls: ['./pet-list.component.css']
})
export class PetListComponent implements OnInit {
  pets: Pet[] = [];

  constructor(private petService: PetService) {}

  ngOnInit(): void {
    this.petService.getAllPets().subscribe((data: Pet[]) => {
      this.pets = data;
    });
  }
}