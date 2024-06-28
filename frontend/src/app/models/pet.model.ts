import { Breed } from './breed.model';
import { Shelter } from './shelter.model';

export interface Pet {
  id: number;
  name: string;
  age: number;
  shelter: Shelter;
  size: string;
  gender: 'MALE' | 'FEMALE';
  breed: Breed;
  image: string;
  description: string;
  unique_features: string;
  availability_status: string;
  createdAt: Date;
  updatedAt: Date;
}
