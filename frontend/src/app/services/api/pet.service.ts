import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PetService {
  private apiUrl = 'http://localhost:8080/api/pets';

  constructor(private http: HttpClient) {}

  getAllPets(): Observable<any> {
    return this.http.get<any>(this.apiUrl);
  }

  getPetById(id: number): Observable<any> {
    return this.http.get<any>(`${this.apiUrl}/${id}`);
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

  searchPets(criteria: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/search`, criteria);    
  }
  }