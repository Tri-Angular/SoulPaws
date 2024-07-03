import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { AuthService } from 'src/app/services/api/auth.service';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';
import { AdoptionRequest } from 'src/app/models/adoption-request.model';

@Component({
  selector: 'app-pet-detail',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './pet-detail.component.html',
  styleUrls: ['./pet-detail.component.css']
})
export class PetDetailComponent implements OnInit {
  pet: Pet | undefined;
  isAdmin: boolean = false;
  isUser: boolean = false;
  successMessage: string | null = null;
  errorMessage: string | null = null;

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private petService: PetService,
    private authService: AuthService,
    private adoptionRequestService: AdoptionRequestService
  ) {}

  ngOnInit(): void {
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      this.petService.getPetById(Number(id)).subscribe((data: Pet) => {
        this.pet = data;
      });
    }

    this.isAdmin = this.authService.isAdmin();
    this.isUser = this.authService.isUser();
  }

  editPet(): void {
    this.router.navigate(['/edit-pet', this.pet?.id]);
  }

  deletePet(): void {
    if (this.pet?.id) {
      if (confirm('Are you sure you want to delete this pet?')) {
        this.petService.deletePet(this.pet.id).subscribe(() => {
          this.successMessage = 'Pet successfully deleted.';
          setTimeout(() => this.router.navigate(['/pet-list']), 2000);
        }, error => {
          console.error('Error deleting pet', error);
        });
      }
    }
  }

  initiateAdoption(petId: number): void {
    const currentUser = this.authService.getCurrentUser();
    if (currentUser) {
      const adoptionRequest: AdoptionRequest = {
        user: { id: currentUser.id },
        pet: { id: petId },
        status: 'PENDING'
      };
      this.adoptionRequestService.createAdoptionRequest(adoptionRequest).subscribe(
        response => {
          console.log('Adoption request initiated', response);
          this.successMessage = 'Adoption request successfully created!';
          this.errorMessage = null;
        },
        error => {
          console.error('Error initiating adoption request', error);
          if (error.error instanceof ErrorEvent) {
            console.error('Client-side error:', error.error.message);
          } else {
            console.error(`Server-side error: ${error.status} - ${error.message}`);
          }
          this.errorMessage = 'Failed to create adoption request. Please try again later.';
          this.successMessage = null;
        }
      );
    } else {
      console.error('User is not authenticated');
      this.errorMessage = 'You must be logged in to adopt a pet.';
      this.successMessage = null;
    }
  }
}