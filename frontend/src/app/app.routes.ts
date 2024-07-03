import { Routes } from '@angular/router';
import { HomeComponent } from './components/pages/home/home.component';
import { PetListComponent } from './components/pages/pets/pet-list/pet-list.component';
import { LoginComponent } from './components/pages/auth/login/login.component';
import { RegisterComponent } from './components/pages/auth/register/register.component';
import { PetDetailComponent } from './components/pages/pets/pet-detail/pet-detail.component';
import { AboutUsComponent } from './components/pages/about-us/about-us.component';
import { PetEditComponent } from './components/pages/pets/pet-edit/pet-edit.component';
import { PetAddComponent } from './components/pages/pets/pet-add/pet-add.component';
import { AdoptionRequestComponent } from './components/pages/adoption-request/adoption-request.component';

export const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'about', component: AboutUsComponent },
  { path: 'pet-list', component: PetListComponent },
  { path: 'pet-detail/:id', component: PetDetailComponent },
  { path: 'edit-pet/:id', component: PetEditComponent },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'add-pet', component: PetAddComponent },
  { path: 'adoption-request', component: AdoptionRequestComponent },
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: '**', redirectTo: '/home' }
];