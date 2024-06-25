import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';


@Component({
  selector: 'app-pet-list',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './pet-list.component.html',
  styleUrls: ['./pet-list.component.css']
})
export class PetListComponent implements OnInit {
  pets: any[] = [];

  constructor(private petService: PetService) { }

  ngOnInit(): void {
    this.petService.getAllPets().subscribe(data => {
      this.pets = data;
    });
  }

  initiateAdoption(petId: number): void {
    console.log('Initiating adoption for pet with ID:', petId);
  }
}