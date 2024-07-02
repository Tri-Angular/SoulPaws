import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Pet } from 'src/app/models/pet.model';
import { Shelter } from 'src/app/models/shelter.model';

@Injectable({
  providedIn: 'root'
})
export class PetService {
  private apiUrl = 'http://localhost:8005/pets';

  constructor(private http: HttpClient) {}

  getAllPets(): Observable<Pet[]> {
    return this.http.get<Pet[]>(this.apiUrl);
  }

  getPetById(id: number): Observable<Pet> {
    return this.http.get<Pet>(`${this.apiUrl}/${id}`);
  }

  createPet(pet: any): Observable<any> {
    return this.http.post<any>(this.apiUrl, pet);
  }

  updatePet(id: number, pet: any): Observable<any> {
    return this.http.put<any>(`${this.apiUrl}/${id}`, pet);
  }

  deletePet(id: number): Observable<any> {
    return this.http.delete<any>(`${this.apiUrl}/${id}`);
  }

  initiateAdoption(petId: number): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/${petId}/initiate-adoption`, {});
  }
  }