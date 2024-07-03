import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { BreedService } from 'src/app/services/api/breed.service';
import { ShelterService } from 'src/app/services/api/shelter.service';
import { Breed } from 'src/app/models/breed.model';
import { Shelter } from 'src/app/models/shelter.model';

@Component({
  selector: 'app-pet-edit',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule],
  templateUrl: './pet-edit.component.html',
  styleUrls: ['./pet-edit.component.css']
})
export class PetEditComponent implements OnInit {
  petForm: FormGroup;
  pet: Pet | undefined;
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
    private route: ActivatedRoute,
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
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      this.petService.getPetById(Number(id)).subscribe((data: Pet) => {
        this.pet = data;
        this.petForm.patchValue({
          name: this.pet.name,
          age: this.pet.age,
          breed: this.pet.breed.id,
          shelter: this.pet.shelter.id,
          size: this.pet.size,
          gender: this.pet.gender,
          image: this.pet.image,
          description: this.pet.description,
          unique_features: this.pet.unique_features,
          availability_status: this.pet.availability_status
        });
      });
    }

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
      if (this.pet && this.pet.id) {
        this.petService.updatePet(this.pet.id, petData).subscribe(() => {
          this.successMessage = 'Successfully edited';
          setTimeout(() => {
            this.router.navigate(['/pet-detail', this.pet?.id]);
          }, 2000);
        }, error => {
          console.error('Error updating pet', error);
          this.errorMessage = 'Error updating pet';
        });
      }
    }
  }
}
