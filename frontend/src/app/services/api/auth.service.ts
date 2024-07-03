import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { tap } from 'rxjs/operators';
import { User } from 'src/app/models/user.model';
@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private apiUrl = 'http://localhost:8005/auth';

  constructor(private http: HttpClient) {}

  login(credentials: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/login`, credentials).pipe(
      tap(response => {
        if (response && response.token && response.role) {
          const user: User = {
            id: response.id,
            email: credentials.email,
            role: response.role,
            token: response.token
          };
          console.log('Login response user:', user);
          localStorage.setItem('currentUser', JSON.stringify(user));
        } else {
          console.error('Login response is missing user or token', response);
        }
      })
    );
  }

  register(user: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/signup`, user);
  }

  logout(): void {
    localStorage.removeItem('currentUser');
  }

  getCurrentUser(): User | null {
    const storedUser = localStorage.getItem('currentUser');
    return storedUser ? JSON.parse(storedUser) : null;
  }

  getToken(): string | null {
    const currentUser = this.getCurrentUser();
    return currentUser ? currentUser.token : null;
  }

  isLoggedIn(): boolean {
    return this.getCurrentUser() !== null;
  }

  isAdmin(): boolean {
    const currentUser = this.getCurrentUser();
    return currentUser?.role === 'ADMIN';
  }

  isShelter(): boolean {
    const currentUser = this.getCurrentUser();
    return currentUser?.role === 'SHELTER';
  }

  isUser(): boolean {
    const currentUser = this.getCurrentUser();
    return currentUser?.role === 'USER';
  }
}
