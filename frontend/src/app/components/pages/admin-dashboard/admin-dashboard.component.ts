import { Component, OnInit } from '@angular/core';
import { FormBuilder, ReactiveFormsModule, Validators } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { AdminService } from 'src/app/services/api/admin.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-admin-dashboard',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule, FormsModule],
  templateUrl: './admin-dashboard.component.html',
  styleUrls: ['./admin-dashboard.component.css']
})
export class AdminDashboardComponent implements OnInit {
  users: any[] = [];
  shelters: any[] = [];
  adoptionRequests: any[] = [];
  newUser = { name: '', email: '' };
  newShelter = { name: '', province: '' };
  errorMessage: string | null = null;
  successMessage: string | null = null;

  constructor(private adminService: AdminService, private fb: FormBuilder) {}

  ngOnInit(): void {
    this.loadUsers();
    this.loadShelters();
    this.loadAdoptionRequests();
  }

  loadUsers(): void {
    this.adminService.getAllUsers().subscribe(users => {
      this.users = users;
    }, error => {
      this.errorMessage = 'Error loading users';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  loadShelters(): void {
    this.adminService.getAllShelters().subscribe(shelters => {
      this.shelters = shelters;
    }, error => {
      this.errorMessage = 'Error loading shelters';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  loadAdoptionRequests(): void {
    this.adminService.getAllAdoptionRequests().subscribe(requests => {
      this.adoptionRequests = requests;
    }, error => {
      this.errorMessage = 'Error loading adoption requests';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  updateUser(id: number, user: any): void {
    this.adminService.updateUser(id, user).subscribe(updatedUser => {
      const index = this.users.findIndex(u => u.id === id);
      this.users[index] = updatedUser;
      this.successMessage = 'User successfully updated';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error updating user';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  deleteUser(id: number): void {
    this.adminService.deleteUser(id).subscribe(() => {
      this.users = this.users.filter(u => u.id !== id);
      this.successMessage = 'User successfully deleted';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error deleting user';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  // Shelters CRUD
  createShelter(): void {
    this.adminService.createShelter(this.newShelter).subscribe(shelter => {
      this.shelters.push(shelter);
      this.newShelter = { name: '', province: '' };
      this.successMessage = 'Shelter successfully added';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error adding shelter';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  updateShelter(id: number, shelter: any): void {
    this.adminService.updateShelter(id, shelter).subscribe(updatedShelter => {
      const index = this.shelters.findIndex(s => s.id === id);
      this.shelters[index] = updatedShelter;
      this.successMessage = 'Shelter successfully updated';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error updating shelter';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  deleteShelter(id: number): void {
    this.adminService.deleteShelter(id).subscribe(() => {
      this.shelters = this.shelters.filter(s => s.id !== id);
      this.successMessage = 'Shelter successfully deleted';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error deleting shelter';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  // Adoption requests CRUD
  updateAdoptionRequest(id: number, status: any): void {
    this.adminService.updateAdoptionRequest(id, status).subscribe(updatedRequest => {
      const index = this.adoptionRequests.findIndex(r => r.id === id);
      this.adoptionRequests[index] = updatedRequest;
      this.successMessage = 'Adoption request successfully updated';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error updating adoption request';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }

  deleteAdoptionRequest(id: number): void {
    this.adminService.deleteAdoptionRequest(id).subscribe(() => {
      this.adoptionRequests = this.adoptionRequests.filter(r => r.id !== id);
      this.successMessage = 'Adoption request successfully deleted';
      setTimeout(() => this.successMessage = null, 3000);
    }, error => {
      this.errorMessage = 'Error deleting adoption request';
      setTimeout(() => this.errorMessage = null, 3000);
    });
  }
}
