import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-pet-search',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './pet-search.component.html',
  styleUrls: ['./pet-search.component.css']
})
export class PetSearchComponent {
  searchQuery: string = '';

  search() {
    // Логика поиска животных
    console.log('Searching for pets with query:', this.searchQuery);
  }
}