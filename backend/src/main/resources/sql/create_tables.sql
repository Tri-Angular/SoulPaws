CREATE SCHEMA IF NOT EXISTS soulpaws;

CREATE TABLE soulpaws.Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Province VARCHAR(100),
    Role ENUM('Admin', 'User') NOT NULL DEFAULT 'User',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE soulpaws.Shelters (
    ShelterID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    Province VARCHAR(100),
    PostalCode VARCHAR(10),
    Description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE soulpaws.Pets (
    PetID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    ShelterID INT,
    Size VARCHAR(20),
    Gender ENUM('Male', 'Female') NOT NULL,
    Breed VARCHAR(100),
    Image TEXT,
    Description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (ShelterID) REFERENCES soulpaws.Shelters(ShelterID)
);

CREATE TABLE soulpaws.PetProfiles (
    PetProfileID INT AUTO_INCREMENT PRIMARY KEY,
    PetID INT,
    UniqueFeatures TEXT,
    AvailabilityStatus ENUM('Available for adoption', 'In adoption process', 'Adopted') NOT NULL DEFAULT 'Available for adoption',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (PetID) REFERENCES soulpaws.Pets(PetID)
);

CREATE TABLE soulpaws.AdoptionRequests (
    RequestID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    PetProfileID INT,
    Status ENUM('Pending', 'Approved', 'Rejected') NOT NULL DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES soulpaws.Users(UserID),
    FOREIGN KEY (PetProfileID) REFERENCES soulpaws.PetProfiles(PetProfileID)
);