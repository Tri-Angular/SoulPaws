CREATE SCHEMA IF NOT EXISTS soulpaws;

CREATE TABLE IF NOT EXISTS soulpaws.users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NULL,
    age INT,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NULL,
    province VARCHAR(255),
    role ENUM('ADMIN', 'USER') NOT NULL DEFAULT 'USER',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS soulpaws.shelters (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    province VARCHAR(100),
    postal_code VARCHAR(10),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS soulpaws.pets (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    shelter_id BIGINT,
    size VARCHAR(20),
    gender ENUM('MALE', 'FEMALE') NOT NULL,
    breed VARCHAR(100),
    image TEXT,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (shelter_id) REFERENCES soulpaws.shelters(id)
);

CREATE TABLE IF NOT EXISTS soulpaws.pet_profiles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    pet_id BIGINT,
    unique_features TEXT,
    availability_status ENUM('AVAILABLE_FOR_ADOPTION', 'IN_ADOPTION_PROCESS', 'ADOPTED') NOT NULL DEFAULT 'AVAILABLE_FOR_ADOPTION',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (pet_id) REFERENCES soulpaws.pets(id)
);

CREATE TABLE IF NOT EXISTS soulpaws.adoption_requests (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    pet_profile_id BIGINT,
    status ENUM('Pending', 'Approved', 'Rejected') NOT NULL DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES soulpaws.users(id),
    FOREIGN KEY (pet_profile_id) REFERENCES soulpaws.pet_profiles(id)
);