import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from '../../../../services/api/user.service';
import { User } from '../../../../models/user.model';

@Component({
  selector: 'app-user-edit',
  templateUrl: './user-edit.component.html',
  styleUrls: ['./user-edit.component.css']
})
export class UserEditComponent implements OnInit {
  user: User | undefined;

  constructor(
    private route: ActivatedRoute,
    private userService: UserService,
    private router: Router
  ) {}

  ngOnInit(): void {
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      this.userService.getUserById(Number(id)).subscribe((data: User) => {
        this.user = data;
      });
    }
  }

  onSubmit(): void {
    if (this.user) {
      this.userService.updateUser(this.user?.id, this.user).subscribe(() => {
        this.router.navigate(['/user-profile', this.user?.id]);
      });
    }
  }
}
