import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { UserService } from '../../../../services/api/user.service';
import { User } from '../../../../models/user.model';

@Component({
  selector: 'app-user-register',
  templateUrl: './user-register.component.html',
  styleUrls: ['./user-register.component.css']
})
export class UserRegisterComponent {
  user: User ={
    id: 0,
    name: '',
    age: 0,
    email: '',
    password: '',
    province: '',
    role: 'USER',
    createdAt: new Date,
    updatedAt: new Date,
  };

  constructor(
    private userService: UserService,
    private router: Router
  ) {}

  onSubmit(): void {
    this.userService.createUser(this.user).subscribe(() => {
      this.router.navigate(['/login']);
    });
  }
}
