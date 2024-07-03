import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';
import { AuthService } from 'src/app/services/api/auth.service';

@Component({
  selector: 'app-adoption-request',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule],
  templateUrl: './adoption-request.component.html',
  styleUrls: ['./adoption-request.component.css']
})
export class AdoptionRequestComponent implements OnInit {
  adoptionForm: FormGroup;
  errorMessage: string | null = null;
  successMessage: string | null = null;

  constructor(
    private fb: FormBuilder,
    private adoptionRequestService: AdoptionRequestService,
    private authService: AuthService,
    private router: Router
  ) {
    this.adoptionForm = this.fb.group({
      petId: ['', Validators.required],
      status: ['PENDING', Validators.required]
    });
  }

  ngOnInit(): void {}

  onSubmit(): void {
    if (this.adoptionForm.valid) {
      const currentUser = this.authService.getCurrentUser();
      if (currentUser) {
        const adoptionRequest = {
          user: { id: currentUser.id },
          pet: { id: this.adoptionForm.value.petId },
          status: this.adoptionForm.value.status
        };
        this.adoptionRequestService.createAdoptionRequest(adoptionRequest).subscribe(
          response => {
            console.log('Adoption request created', response);
            this.successMessage = 'Adoption request successfully created!';
            setTimeout(() => {
              this.router.navigate(['/pet-list']);
            }, 2000);
          },
          error => {
            console.error('Error creating adoption request', error);
            this.errorMessage = 'Failed to create adoption request. Please try again later.';
          }
        );
      } else {
        this.errorMessage = 'You must be logged in to create an adoption request.';
      }
    }
  }
}
