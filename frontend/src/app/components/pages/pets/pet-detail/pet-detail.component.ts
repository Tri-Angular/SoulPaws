import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { PetService } from '../../../../services/api/pet.service';
import { Pet } from '../../../../models/pet.model';

@Component({
  selector: 'app-pet-detail',
  templateUrl: './pet-detail.component.html',
  styleUrls: ['./pet-detail.component.css']
})
export class PetDetailComponent implements OnInit {
  pet: Pet | undefined;

  constructor(
    private route: ActivatedRoute,
    private petService: PetService
  ) {}

  ngOnInit(): void {
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      this.petService.getPetById(Number(id)).subscribe((data: Pet) => {
        this.pet = data;
      });
    }
  }
}