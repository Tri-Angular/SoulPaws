import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';
import { BreedService } from 'src/app/services/api/breed.service';
import { ShelterService } from 'src/app/services/api/shelter.service';
import { Breed } from 'src/app/models/breed.model';
import { Shelter } from 'src/app/models/shelter.model';

@Component({
  selector: 'app-pet-add',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule],
  templateUrl: './pet-add.component.html',
  styleUrls: ['./pet-add.component.css']
})
export class PetAddComponent implements OnInit {
  petForm: FormGroup;
  breeds: Breed[] = [];
  shelters: Shelter[] = [];
  availabilityStatuses = ['AVAILABLE_FOR_ADOPTION', 'ADOPTED', 'NOT_AVAILABLE'];
  errorMessage: string | null = null;
  successMessage: string | null = null;

  constructor(
    private fb: FormBuilder,
    private petService: PetService,
    private breedService: BreedService,
    private shelterService: ShelterService,
    private router: Router
  ) {
    this.petForm = this.fb.group({
      name: ['', Validators.required],
      age: ['', Validators.required],
      breed: ['', Validators.required],
      shelter: ['', Validators.required],
      size: ['', Validators.required],
      gender: ['', Validators.required],
      image: ['', Validators.required],
      description: ['', Validators.required],
      unique_features: ['', Validators.required],
      availability_status: ['', Validators.required]
    });
  }

  ngOnInit(): void {
    this.breedService.getAllBreeds().subscribe((data: Breed[]) => {
      this.breeds = data;
    });

    this.shelterService.getAllShelters().subscribe((data: Shelter[]) => {
      this.shelters = data;
    });
  }

  onSubmit(): void {
    if (this.petForm.valid) {
      const petData = {
        ...this.petForm.value,
        breed: { id: this.petForm.value.breed },
        shelter: { id: this.petForm.value.shelter }
      };
      this.petService.createPet(petData).subscribe(() => {
        this.successMessage = 'Successfully added new pet';
        setTimeout(() => {
          this.router.navigate(['/pet-list']);
        }, 2000);
      }, error => {
        console.error('Error adding pet', error);
        this.errorMessage = 'Error adding pet';
      });
    }
  }
}
