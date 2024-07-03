import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/services/api/auth.service';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';
import { PetService } from 'src/app/services/api/pet.service';
import { User } from 'src/app/models/user.model';
import { AdoptionRequest } from 'src/app/models/adoption-request.model';
import { Pet } from 'src/app/models/pet.model';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-user-profile',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {
  user: User | null = null;
  adoptionRequests: AdoptionRequest[] = [];
  pets: { [key: number]: Pet } = {};
  successMessage: string | null = null;
  errorMessage: string | null = null;

  constructor(
    private authService: AuthService,
    private adoptionRequestService: AdoptionRequestService,
    private petService: PetService
  ) {}

  ngOnInit(): void {
    this.user = this.authService.getCurrentUser();
    if (this.user) {
      this.adoptionRequestService.getAdoptionRequestsByUserId(this.user.id).subscribe((requests: AdoptionRequest[]) => {
        this.adoptionRequests = requests;
        this.adoptionRequests.forEach(request => {
          this.petService.getPetById(request.pet.id).subscribe((pet: Pet) => {
            this.pets[request.pet.id] = pet;
          });
        });
      });
    }
  }

  saveProfile(): void {
    if (this.user) {
      this.authService.updateUser(this.user).subscribe(
        updatedUser => {
          this.user = updatedUser;
          localStorage.setItem('currentUser', JSON.stringify(updatedUser));
          this.successMessage = 'Profile updated successfully!';
          this.errorMessage = null;
        },
        error => {
          console.error('Error updating profile', error);
          this.errorMessage = 'Failed to update profile. Please try again later.';
          this.successMessage = null;
        }
      );
    }
  }
}
