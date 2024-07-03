import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class AdminService {
  private apiUrl = 'http://localhost:8005';

  constructor(private http: HttpClient) {}

  getAllUsers(): Observable<any[]> {
    return this.http.get<any[]>(`${this.apiUrl}/users`);
  }

  createUser(user: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/users`, user);
  }

  updateUser(id: number, user: any): Observable<any> {
    return this.http.put<any>(`${this.apiUrl}/users/${id}`, user);
  }

  deleteUser(id: number): Observable<any> {
    return this.http.delete<any>(`${this.apiUrl}/users/${id}`);
  }

  getAllShelters(): Observable<any[]> {
    return this.http.get<any[]>(`${this.apiUrl}/shelters`);
  }

  createShelter(shelter: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/shelters`, shelter);
  }

  updateShelter(id: number, shelter: any): Observable<any> {
    return this.http.put<any>(`${this.apiUrl}/shelters/${id}`, shelter);
  }

  deleteShelter(id: number): Observable<any> {
    return this.http.delete<any>(`${this.apiUrl}/shelters/${id}`);
  }

  getAllAdoptionRequests(): Observable<any[]> {
    return this.http.get<any[]>(`${this.apiUrl}/adoptions`).pipe(
      catchError(error => {
        console.error('Error fetching adoption requests:', error);
        throw error;
      })
    );
  }

  updateAdoptionRequest(id: number, status: any): Observable<any> {
    return this.http.put<any>(`${this.apiUrl}/adoptions/${id}`, status);
  }

  deleteAdoptionRequest(id: number): Observable<any> {
    return this.http.delete<any>(`${this.apiUrl}/adoptions/${id}`);
  }
}
