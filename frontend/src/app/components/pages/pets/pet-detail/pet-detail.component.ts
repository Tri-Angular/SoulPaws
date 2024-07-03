import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { AuthService } from 'src/app/services/api/auth.service';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';
import { AdoptionRequest } from 'src/app/models/adoption-request.model';
import { Observable, catchError, map, of, switchMap } from 'rxjs';

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

  checkExistingAdoptionRequest(userId: number, petId: number): Observable<boolean> {
    return this.adoptionRequestService.getAllAdoptionRequests().pipe(
      map(requests => requests.some((request: AdoptionRequest) => request.user.id === userId && request.pet.id === petId)),
      catchError(() => of(false))
    );
  }

  initiateAdoption(petId: number): void {
    const currentUser = this.authService.getCurrentUser();
    if (currentUser) {

      this.checkExistingAdoptionRequest(currentUser.id, petId).pipe(
        switchMap(exists => {
          if (exists) {
            this.errorMessage = 'You have already submitted an adoption request for this pet.';
            this.successMessage = null;
            setTimeout(() => this.errorMessage = null, 3000);
            return of(null);
          } else {
            const adoptionRequest: AdoptionRequest = {
              user: { id: currentUser.id },
              pet: { id: petId },
              status: 'PENDING'
            };
            return this.adoptionRequestService.createAdoptionRequest(adoptionRequest);
          }
        })
      ).subscribe(
        response => {
          if (response) {
            console.log('Adoption request initiated', response);
            this.successMessage = 'Adoption request successfully created!';
            this.errorMessage = null;
            setTimeout(() => this.successMessage = null, 3000);
          }
        },
        error => {
          console.error('Error initiating adoption request', error);
          this.errorMessage = 'Failed to create adoption request. Please try again later.';
          this.successMessage = null;
          setTimeout(() => this.errorMessage = null, 3000);
        }
      );
    } else {
      console.error('User is not authenticated');
      this.errorMessage = 'You must be logged in to adopt a pet.';
      this.successMessage = null;
      setTimeout(() => this.errorMessage = null, 3000);
  }
}
}