-- Creación del esquema soulpaws si no existe
CREATE SCHEMA IF NOT EXISTS soulpaws;

-- Creación y llenado de la tabla Users
INSERT INTO soulpaws.Users (Name, Age, Email, Password, Province, Role)
VALUES
('John Doe', 30, 'johndoe@example.com', 'password123', 'California', 'User'),
('Jane Smith', 25, 'janesmith@example.com', 'password456', 'New York', 'Admin'),
('Alice Johnson', 28, 'alicejohnson@example.com', 'password789', 'Texas', 'User');

-- Creación y llenado de la tabla Shelters
INSERT INTO soulpaws.Shelters (Name, Phone, Email, Address, Province, PostalCode, Description)
VALUES
('Happy Paws Shelter', '123-456-7890', 'contact@happypaws.org', '123 Paw St, Los Angeles, CA', 'California', '90001', 'Un refugio amigable para todo tipo de mascotas.'),
('Safe Haven Shelter', '987-654-3210', 'info@safehaven.org', '456 Safe St, New York, NY', 'New York', '10001', 'Un lugar seguro para mascotas abandonadas.'),
('Loving Home Shelter', '555-555-5555', 'hello@lovinghome.org', '789 Love St, Houston, TX', 'Texas', '77001', 'Proporcionando hogares amorosos para mascotas necesitadas.');

-- Creación y llenado de la tabla Pets
INSERT INTO soulpaws.Pets (Name, Age, ShelterID, Size, Gender, Breed, Image, Description)
VALUES
('Buddy', 3, 1, 'Medium', 'Male', 'Labrador Retriever', 'buddy.jpg', 'Un perro amigable y enérgico.'),
('Mittens', 2, 2, 'Small', 'Female', 'Domestic Shorthair', 'mittens.jpg', 'Una gata calmada y cariñosa.'),
('Charlie', 1, 3, 'Large', 'Male', 'Golden Retriever', 'charlie.jpg', 'Un perro juguetón y leal.');

-- Creación y llenado de la tabla PetProfiles
INSERT INTO soulpaws.PetProfiles (PetID, UniqueFeatures, AvailabilityStatus)
VALUES
(1, 'Le encanta jugar a buscar', 'Available for adoption'),
(2, 'Tiene una mancha negra única en su pata', 'In adoption process'),
(3, 'Excelente con niños', 'Available for adoption');

-- Creación y llenado de la tabla AdoptionRequests
INSERT INTO soulpaws.AdoptionRequests (UserID, PetProfileID, Status)
VALUES
(1, 1, 'Pending'),
(2, 2, 'Approved'),
(3, 3, 'Rejected');