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
        this.petForm.patchValue(this.pet);
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
      const petData = this.petForm.value;
      if (this.pet && this.pet.id) {
        this.petService.updatePet(this.pet.id, petData).subscribe(() => {
          this.router.navigate(['/pet-list']);
        });
      }
    }
  }
}