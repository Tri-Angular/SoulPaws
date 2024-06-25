import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { PetSearchComponent } from '../../pages/pets/pet-search/pet-search.component';

@Component({
  selector: 'app-nav-bar',
  standalone: true,
  imports: [RouterModule, PetSearchComponent],
  templateUrl: './nav-bar.component.html',
  styleUrls: ['./nav-bar.component.css']
})
export class NavBarComponent { }
