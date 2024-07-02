import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Shelter } from 'src/app/models/shelter.model';

@Injectable({
  providedIn: 'root'
})
export class ShelterService {
  private apiUrl = 'http://localhost:8005/shelters';

  constructor(private http: HttpClient) {}

  getAllShelters(): Observable<Shelter[]> {
    return this.http.get<Shelter[]>(this.apiUrl);
  }

  getShelterById(id: number): Observable<Shelter> {
    return this.http.get<Shelter>(`${this.apiUrl}/${id}`);
  }
}