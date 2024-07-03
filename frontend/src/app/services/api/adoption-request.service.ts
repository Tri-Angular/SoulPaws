import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { AdoptionRequest } from 'src/app/models/adoption-request.model';

@Injectable({
  providedIn: 'root'
})
export class AdoptionRequestService {
  private apiUrl = 'http://localhost:8005/adoptions';

  constructor(private http: HttpClient) {}

  getAllAdoptionRequests(): Observable<any> {
    return this.http.get<any>(this.apiUrl);
  }

  getAdoptionRequestById(id: number): Observable<any> {
    return this.http.get<any>(`${this.apiUrl}/${id}`);
  }

  createAdoptionRequest(adoptionRequest: AdoptionRequest): Observable<any> {
    console.log('AdoptionRequest:', adoptionRequest);
    return this.http.post<any>(this.apiUrl, adoptionRequest);
  }

  updateAdoptionRequest(id: number, adoptionRequest: any): Observable<any> {
    return this.http.put<any>(`${this.apiUrl}/${id}`, adoptionRequest);
  }

  deleteAdoptionRequest(id: number): Observable<any> {
    return this.http.delete<any>(`${this.apiUrl}/${id}`);
  }

  approveRequest(id: number): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/${id}/approve`, {});
  }

  rejectRequest(id: number): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/${id}/reject`, {});
  }

  pendingRequest(id: number): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/${id}/pending`, {});
  }
}