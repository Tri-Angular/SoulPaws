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
('Buddy', 3, 1, 'Medium', 'MALE', 'Labrador Retriever', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Friendly and playful.'),
('Misty', 2, 2, 'Small', 'FEMALE', 'Beagle', 'https://images.unsplash.com/photo-1558788353-f76d92427f16', 'Loves to cuddle and play.'),
('Max', 4, 1, 'Large', 'MALE', 'German Shepherd', 'https://i.pinimg.com/736x/e5/b9/81/e5b98110fcd62d6ebe0e636262170175.jpg', 'Loyal and protective.'),
('Bella', 1, 1, 'Medium', 'FEMALE', 'Bulldog', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Calm and loving.'),
('Luna', 3, 1, 'Small', 'FEMALE', 'Poodle', 'https://en.pimg.jp/107/507/934/1/107507934.jpg', 'Smart and playful.'),
('Rocky', 2, 1, 'Large', 'MALE', 'Rottweiler', 'https://i.imgflip.com/1h99k4.jpg', 'Strong and confident.'),
('Molly', 5, 1, 'Medium', 'FEMALE', 'Boxer', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Energetic and friendly.'),
('Daisy', 4, 1, 'Small', 'FEMALE', 'Shih Tzu', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToHnajsp-Ngyv8p-VUwm6OAXkUxS0Dx9Q4EA&s', 'Affectionate and friendly.'),
('Oliver', 2, 2, 'Medium', 'MALE', 'Husky', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Playful and vocal.'),
('Simba', 3, 2, 'Large', 'MALE', 'Great Dane', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Gentle giant.'),
('Charlie', 1, 2, 'Small', 'MALE', 'Pomeranian', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Cute and energetic.'),
('Sophie', 2, 2, 'Medium', 'FEMALE', 'Collie', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Intelligent and alert.'),
('Coco', 3, 1, 'Large', 'FEMALE', 'Doberman', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Alert and loyal.'),
('Bailey', 1, 1, 'Small', 'FEMALE', 'Cocker Spaniel', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Gentle and loving.'),
('Chloe', 4, 1, 'Medium', 'FEMALE', 'Dalmatian', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Energetic and friendly.'),
('Loki', 2, 1, 'Large', 'MALE', 'Mastiff', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Strong and loyal.'),
('Ginger', 3, 1, 'Small', 'FEMALE', 'Chihuahua', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Lively and alert.'),
('Oscar', 5, 2, 'Medium', 'MALE', 'Border Collie', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Smart and energetic.'),
('Ruby', 4, 2, 'Large', 'FEMALE', 'Saint Bernard', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Gentle and friendly.'),
('Buster', 2, 2, 'Small', 'MALE', 'Dachshund', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Playful and curious.'),
('Lucy', 3, 2, 'Medium', 'FEMALE', 'Golden Retriever', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Friendly and loyal.'),
('Toby', 1, 2, 'Large', 'MALE', 'Pit Bull', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Strong and friendly.'),
('Lily', 2, 1, 'Small', 'FEMALE', 'Pug', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Cute and playful.'),
('Zeus', 4, 1, 'Medium', 'MALE', 'Akita', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Loyal and protective.'),
('Maggie', 3, 1, 'Large', 'FEMALE', 'Bernese Mountain Dog', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Gentle and friendly.'),
('Henry', 2, 1, 'Small', 'MALE', 'Bichon Frise', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Playful and friendly.'),
('Sasha', 4, 2, 'Medium', 'FEMALE', 'Samoyed', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Friendly and energetic.'),
('Bruno', 3, 2, 'Large', 'MALE', 'Bullmastiff', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Loyal and protective.'),
('Roxy', 2, 2, 'Small', 'FEMALE', 'Maltese', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Cute and playful.'),
('Jake', 1, 2, 'Medium', 'MALE', 'Weimaraner', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Energetic and friendly.'),
('Mimi', 3, 2, 'Small', 'FEMALE', 'Scottish Terrier', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Lively and playful.'),
('Rufus', 4, 2, 'Large', 'MALE', 'Newfoundland', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Gentle and loyal.');

INSERT INTO soulpaws.pet_profiles (pet_id, unique_features, availability_status)
VALUES
(1, 'Golden fur with a white spot on the chest', 'AVAILABLE_FOR_ADOPTION'),
(2, 'Brown and white coat, very energetic', 'AVAILABLE_FOR_ADOPTION'),
(3, 'Black fur with tan markings', 'AVAILABLE_FOR_ADOPTION'),
(4, 'Short and stocky build', 'AVAILABLE_FOR_ADOPTION'),
(5, 'Curly fur, very playful', 'AVAILABLE_FOR_ADOPTION'),
(6, 'Muscular build, very strong', 'AVAILABLE_FOR_ADOPTION'),
(7, 'Short fur, very energetic', 'AVAILABLE_FOR_ADOPTION'),
(8, 'Long fur, loves to cuddle', 'AVAILABLE_FOR_ADOPTION'),
(9, 'Blue eyes, very vocal', 'AVAILABLE_FOR_ADOPTION'),
(10, 'Large and gentle', 'AVAILABLE_FOR_ADOPTION'),
(11, 'Small and fluffy', 'AVAILABLE_FOR_ADOPTION'),
(12, 'Long fur, very alert', 'AVAILABLE_FOR_ADOPTION'),
(13, 'Sleek black coat', 'AVAILABLE_FOR_ADOPTION'),
(14, 'Curly fur, loves to play', 'AVAILABLE_FOR_ADOPTION'),
(15, 'Spotted coat, very active', 'AVAILABLE_FOR_ADOPTION'),
(16, 'Massive build, very loyal', 'AVAILABLE_FOR_ADOPTION'),
(17, 'Small and lively', 'AVAILABLE_FOR_ADOPTION'),
(18, 'Smart and energetic', 'AVAILABLE_FOR_ADOPTION'),
(19, 'Large and friendly', 'AVAILABLE_FOR_ADOPTION'),
(20, 'Long body, very curious', 'AVAILABLE_FOR_ADOPTION'),
(21, 'Golden coat, very friendly', 'AVAILABLE_FOR_ADOPTION'),
(22, 'Muscular build, very friendly', 'AVAILABLE_FOR_ADOPTION'),
(23, 'Short and cute', 'AVAILABLE_FOR_ADOPTION'),
(24, 'Loyal and protective', 'AVAILABLE_FOR_ADOPTION'),
(25, 'Large and gentle', 'AVAILABLE_FOR_ADOPTION'),
(26, 'Curly fur, very playful', 'AVAILABLE_FOR_ADOPTION'),
(27, 'White fur, very friendly', 'AVAILABLE_FOR_ADOPTION'),
(28, 'Muscular build, very loyal', 'AVAILABLE_FOR_ADOPTION'),
(29, 'Small and cute', 'AVAILABLE_FOR_ADOPTION'),
(30, 'Energetic and friendly', 'AVAILABLE_FOR_ADOPTION'),
(31, 'Lively and playful', 'AVAILABLE_FOR_ADOPTION'),
(32, 'Gentle and loyal', 'AVAILABLE_FOR_ADOPTION');

INSERT INTO soulpaws.adoption_requests (user_id, pet_profile_id, status)
VALUES
(2, 1, 'Pending'),
(3, 2, 'Pending');