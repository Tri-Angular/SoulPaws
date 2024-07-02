import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { PetService } from 'src/app/services/api/pet.service';
import { Pet } from 'src/app/models/pet.model';
import { AuthService } from 'src/app/services/api/auth.service';
import { AdoptionRequestService } from 'src/app/services/api/adoption-request.service';

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
    this.adoptionRequestService.createAdoptionRequest({ petId }).subscribe(response => {
      console.log('Adoption request initiated', response);
    }, error => {
      console.error('Error initiating adoption request', error);
    });
  }
}