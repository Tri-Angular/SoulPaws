import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PetSearchComponent } from './pet-search.component';

describe('PetSearchComponent', () => {
  let component: PetSearchComponent;
  let fixture: ComponentFixture<PetSearchComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PetSearchComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PetSearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
