import { Component } from '@angular/core';
import { RouterModule, Router } from '@angular/router';
import { AuthService } from 'src/app/services/api/auth.service';
import { CommonModule } from '@angular/common';
import { NavBarComponent } from '../nav-bar/nav-bar.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
  standalone: true,
  imports: [CommonModule, RouterModule, NavBarComponent]
})
export class HeaderComponent {
  constructor(private router: Router, private authService: AuthService) {}

  login() {
    this.router.navigate(['/login']);
  }

  register() {
    this.router.navigate(['/register']);
  }

  logout() {
    this.authService.logout();
    this.router.navigate(['/login']);
  }

  isLoggedIn(): boolean {
    return this.authService.isLoggedIn();
  }

  isAdmin(): boolean {
    return this.authService.isAdmin();
  }

  isShelter(): boolean {
    return this.authService.isShelter();
  }

  isUser(): boolean {
    return this.authService.isUser();
  }

  getCurrentUser(): any {
    const user = this.authService.getCurrentUser();
    console.log('Header current user:', user); // Логирование текущего пользователя в header
    return user;
  }
}
