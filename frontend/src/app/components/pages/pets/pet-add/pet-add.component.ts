import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { PetService } from '../../../../services/api/pet.service';
import { Pet } from '../../../../models/pet.model'; // Importa la interfaz Pet si aún no lo has hecho

@Component({
  selector: 'app-pet-add',
  templateUrl: './pet-add.component.html',
  styleUrls: ['./pet-add.component.css']
})
export class PetAddComponent {
  pet: Pet = {  // Usa un objeto literal para inicializar pet
    id: 0,
    name: '',
    age: 0,
    shelterId: 0,
    size: '',
    gender: 'MALE',
    breed: '',
    image: '',
    description: '',
    createdAt: new Date(),
    updatedAt: new Date()
  };

  constructor(
    private petService: PetService,
    private router: Router
  ) {}

  onSubmit(): void {
    this.petService.createPet(this.pet).subscribe(() => {
      this.router.navigate(['/pets']);
    });
  }
}
