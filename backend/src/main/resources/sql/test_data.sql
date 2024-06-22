INSERT INTO soulpaws.users (name, age, email, password, province, role)
VALUES
('Alice Admin', 35, 'alice.admin@example.com', 'hashedpassword1', 'Ontario', 'ADMIN'),
('Bob User', 28, 'bob.user@example.com', 'hashedpassword2', 'Quebec', 'USER'),
('Charlie User', 30, 'charlie.user@example.com', 'hashedpassword3', 'British Columbia', 'USER');

INSERT INTO soulpaws.shelters (name, phone, email, address, province, postal_code, description)
VALUES
('Happy Paws Shelter', '123-456-7890', 'contact@happypaws.com', '1234 Elm St, Toronto', 'Ontario', 'M4B1B3', 'A welcoming place for pets in need.'),
('Safe Haven Shelter', '234-567-8901', 'info@safehaven.com', '5678 Oak St, Montreal', 'Quebec', 'H1A2B3', 'Providing shelter and care for homeless pets.');

INSERT INTO soulpaws.pets (name, age, shelter_id, size, gender, breed, image, description)
VALUES
('Buddy', 3, 1, 'Medium', 'MALE', 'Labrador Retriever', 'image_url_1', 'Friendly and playful.'),
('Misty', 2, 2, 'Small', 'FEMALE', 'Beagle', 'image_url_2', 'Loves to cuddle and play.');

INSERT INTO soulpaws.pet_profiles (pet_id, unique_features, availability_status)
VALUES
(1, 'Golden fur with a white spot on the chest', 'AVAILABLE_FOR_ADOPTION'),
(2, 'Brown and white coat, very energetic', 'AVAILABLE_FOR_ADOPTION');

INSERT INTO soulpaws.adoption_requests (user_id, pet_profile_id, status)
VALUES
(2, 1, 'Pending'),
(3, 2, 'Pending');