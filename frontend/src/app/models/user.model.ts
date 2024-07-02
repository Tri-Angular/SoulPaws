export interface User {
    id: number;
    name: string;
    age: number;
    email: string;
    password: string;
    province: string;
    role: 'ADMIN' | 'USER' | 'SHELTER';
    createdAt: Date;
    updatedAt: Date;
}