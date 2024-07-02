import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [CommonModule, RouterModule],
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  pets: Pet[] = [];
  randomPets: Pet[] = [];

  constructor(private petService: PetService) {}

  ngOnInit(): void {
    this.petService.getAllPets().subscribe((data: Pet[]) => {
      this.pets = data;
      this.randomPets = this.getRandomPets(5);
    });
  }

  getRandomPets(count: number): Pet[] {
    const shuffled = [...this.pets].sort(() => 0.5 - Math.random());
    return shuffled.slice(0, count);
  }
}
