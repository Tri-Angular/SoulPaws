import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Breed } from 'src/app/models/breed.model';

@Injectable({
  providedIn: 'root'
})
export class BreedService {
  private apiUrl = 'http://localhost:8005/breeds';

  constructor(private http: HttpClient) {}

  getAllBreeds(): Observable<Breed[]> {
    return this.http.get<Breed[]>(this.apiUrl);
  }

  getBreedById(id: number): Observable<Breed> {
    return this.http.get<Breed>(`${this.apiUrl}/${id}`);
  }
}