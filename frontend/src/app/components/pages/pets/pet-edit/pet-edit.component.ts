import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PetService } from '../../../../services/api/pet.service';
import { Pet } from '../../../../models/pet.model';

@Component({
  selector: 'app-pet-edit',
  templateUrl: './pet-edit.component.html',
  styleUrls: ['./pet-edit.component.css']
})
export class PetEditComponent implements OnInit {
  pet: Pet = {} as Pet;
  petId!: number; //A TENER ENCUENTA - Usa el operador ! para indicar a TypeScript que confíe en ti y que sabes que petId estará definitivamente definida en el constructor o en la inicialización de la clase.

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private petService: PetService
  ) {}

  ngOnInit(): void {
    this.petId = Number(this.route.snapshot.paramMap.get('id')); // Obtener el ID de la mascota desde la URL
    this.getPetDetails();
  }

  getPetDetails(): void {
    this.petService.getPetById(this.petId).subscribe(
      (data: Pet) => {
        this.pet = data; // Asignar los detalles de la mascota obtenidos del servicio
      },
      (error) => {
        console.error('Error al obtener los detalles de la mascota:', error);
      }
    );
  }

  updatePet(): void {
    this.petService.updatePet(this.petId, this.pet).subscribe(
      () => {
        console.log('Mascota actualizada correctamente.');
        this.router.navigate(['/pets']); // Redirigir a la lista de mascotas después de la actualización
      },
      (error) => {
        console.error('Error al actualizar la mascota:', error);
      }
    );
  }
}
