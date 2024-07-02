import { Component } from '@angular/core';
import { RouterModule, Router } from '@angular/router';
import { NavBarComponent } from '../nav-bar/nav-bar.component';
import { CommonModule } from '@angular/common';
import { AuthService } from 'src/app/services/api/auth.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
  standalone: true,
  imports: [NavBarComponent, RouterModule, CommonModule]
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
    this.router.navigate(['/home']);
  }

  isLoggedIn(): boolean {
    return this.authService.isLoggedIn();
  }
}
