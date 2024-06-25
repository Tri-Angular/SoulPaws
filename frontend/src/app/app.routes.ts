import { Routes } from '@angular/router';
import { HomeComponent } from './components/pages/home/home.component';
import { PetListComponent } from './components/pages/pets/pet-list/pet-list.component';
import { LoginComponent } from './components/pages/auth/login/login.component';
import { RegisterComponent } from './components/pages/auth/register/register.component';

export const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'pet-list', component: PetListComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: '', redirectTo: '/pet-list', pathMatch: 'full' },
  { path: '**', redirectTo: '/home' }
];