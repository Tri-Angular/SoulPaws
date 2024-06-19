export interface Pet {
    id: number;
    name: string;
    age: number;
    shelterId: number;
    size: string;
    gender: 'MALE' | 'FEMALE';
    breed: string;
    image: string;
    description: string;
    createdAt: Date;
    updatedAt: Date;
}