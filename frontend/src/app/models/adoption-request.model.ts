export interface AdoptionRequest {
    id: number;
    userId: number;
    petProfileId: number;
    status: 'PENDING' | 'APPROVED' | 'REJECTED';
    createdAt: Date;
    updatedAt: Date;
}