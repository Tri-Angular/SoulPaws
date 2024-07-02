import { Routes } from '@angular/router';
import { HomeComponent } from './components/pages/home/home.component';
import { PetListComponent } from './components/pages/pets/pet-list/pet-list.component';
import { LoginComponent } from './components/pages/auth/login/login.component';
import { RegisterComponent } from './components/pages/auth/register/register.component';
import { PetDetailComponent } from './components/pages/pets/pet-detail/pet-detail.component';
import { AboutUsComponent } from './components/pages/about-us/about-us.component';

export const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'about', component: AboutUsComponent },
  { path: 'pet-list', component: PetListComponent },
  { path: 'pet-detail/:id', component: PetDetailComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: '**', redirectTo: '/home' }
];