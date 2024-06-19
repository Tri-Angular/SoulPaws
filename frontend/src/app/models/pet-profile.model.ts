export interface PetProfile {
    id: number;
    petId: number;
    uniqueFeatures: string;
    availabilityStatus: 'AVAILABLE_FOR_ADOPTION' | 'IN_ADOPTION_PROCESS' | 'ADOPTED';
    createdAt: Date;
    updatedAt: Date;
}