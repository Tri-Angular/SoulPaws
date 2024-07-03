export interface User {
    id: number;
    email: string;
    role: string;
    token: string;
    name?: string;
    age?: number;
    password?: string;
    province?: string;
    createdAt?: Date;
    updatedAt?: Date;
  }