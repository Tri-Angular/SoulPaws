-- 18/06/24
-- Usuarios
INSERT INTO user (name, age, email, password, province, role, created_at, updated_at)
VALUES
    ('Administrador', 35, 'admin@example.com', 'admin123', 'Granada', 'ADMIN', NOW(), NOW()),
    ('Usuario Común', 28, 'usuario@example.com', 'user123', 'Sevilla', 'USER', NOW(), NOW());

-- Refugios
INSERT INTO shelter (name, phone, email, address, province, postal_code, description, created_at, updated_at)
VALUES
    ('Refugio Canino Amigos Peludos', '123456789', 'refugio.amigospeludos@example.com', 'Calle de los Perros, 123', 'Madrid', '28001', 'Refugio para perros abandonados', NOW(), NOW()),
    ('Asociación Felina Miau', '987654321', 'asociacion.miau@example.com', 'Avenida de los Gatos, 456', 'Barcelona', '08001', 'Asociación para gatos callejeros', NOW(), NOW());

-- Mascotas
INSERT INTO pet (name, age, shelter_id, size, gender, breed, image, description, created_at, updated_at)
VALUES
    ('Rex', 3, 1, 'Grande', 'MALE', 'Labrador Retriever', 'rex.jpg', 'Rex es un Labrador muy juguetón y cariñoso.', NOW(), NOW()),
    ('Luna', 2, 2, 'Mediana', 'FEMALE', 'Siamesa', 'luna.jpg', 'Luna es una gata tranquila y sociable.', NOW(), NOW()),
    ('Bobby', 4, 1, 'Pequeño', 'MALE', 'Yorkshire Terrier', 'bobby.jpg', 'Bobby es un perro pequeño y muy activo.', NOW(), NOW()),
    ('Pelusa', 5, 2, 'Mediana', 'FEMALE', 'Persa', 'pelusa.jpg', 'Pelusa es una gata persa con pelo largo y suave.', NOW(), NOW());

-- Perfiles de Mascotas
INSERT INTO pet_profile (pet_id, unique_features, availability_status, created_at, updated_at)
VALUES
    (1, 'Manchas blancas en las patas traseras', 'AVAILABLE_FOR_ADOPTION', NOW(), NOW()),
    (2, 'Ojos azules', 'IN_ADOPTION_PROCESS', NOW(), NOW()),
    (3, 'Rabito corto', 'ADOPTED', NOW(), NOW()),
    (4, 'Pelaje largo y suave', 'AVAILABLE_FOR_ADOPTION', NOW(), NOW()),
    (1, 'Juega mucho con otros perros', 'IN_ADOPTION_PROCESS', NOW(), NOW()),
    (3, 'Rescatado de la calle', 'ADOPTED', NOW(), NOW()),
    (2, 'Le gusta estar en lugares altos', 'AVAILABLE_FOR_ADOPTION', NOW(), NOW()),
    (4, 'Se lleva bien con otros gatos', 'IN_ADOPTION_PROCESS', NOW(), NOW()),
    (1, 'Entrenado en obediencia básica', 'ADOPTED', NOW(), NOW()),
    (2, 'Necesita atención médica regular', 'AVAILABLE_FOR_ADOPTION', NOW(), NOW());
-------------
select * from user;

select * from pet;

select * from pet_profile;

select * from shelter;

describe  user;

describe shelter;

describe pet;

describe pet_profile;
-----------------------