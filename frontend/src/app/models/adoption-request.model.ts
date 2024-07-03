export interface AdoptionRequest {
  id?: number;
  user: { id: number };
  pet: { id: number };
  status: 'PENDING' | 'APPROVED' | 'REJECTED';
  createdAt?: Date;
  updatedAt?: Date;
}