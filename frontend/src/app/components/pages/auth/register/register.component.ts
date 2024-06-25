import { Component } from '@angular/core';
import { AuthService } from 'src/app/services/api/auth.service';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css'],
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule]
})
export class RegisterComponent {
  registerForm: FormGroup;
  errorMessage: string | null = null;

  constructor(private authService: AuthService, private fb: FormBuilder) {
    this.registerForm = this.fb.group({
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(6)]]
    });
  }

  register() {
    if (this.registerForm.valid) {
      const user = this.registerForm.value;
      this.authService.register(user).subscribe(response => {
        // handle successful registration
        console.log('Registration successful', response);
        this.errorMessage = null;
      }, error => {
        // handle registration error
        console.error('Registration error', error);
        this.errorMessage = 'Registration failed. Please try again.';
      });
    } else {
      this.errorMessage = 'Please fill in all fields correctly.';
    }
  }
}