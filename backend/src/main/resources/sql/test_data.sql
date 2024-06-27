INSERT INTO soulpaws.users (name, age, email, password, province, role)
VALUES
('Alice Admin', 35, 'alice.admin@example.com', 'hashedpassword1', 'Ontario', 'ADMIN'),
('Bob User', 28, 'bob.user@example.com', 'hashedpassword2', 'Quebec', 'USER'),
('Charlie User', 30, 'charlie.user@example.com', 'hashedpassword3', 'British Columbia', 'USER');

INSERT INTO soulpaws.breeds (breed, species)
VALUES
('Labrador Retriever', 'DOG'),
('Beagle', 'DOG'),
('German Shepherd', 'DOG'),
('Bulldog', 'DOG'),
('Poodle', 'DOG'),
('Rottweiler', 'DOG'),
('Boxer', 'DOG'),
('Shih Tzu', 'DOG'),
('Husky', 'DOG'),
('Great Dane', 'DOG'),
('Pomeranian', 'DOG'),
('Collie', 'DOG'),
('Doberman', 'DOG'),
('Cocker Spaniel', 'DOG'),
('Dalmatian', 'DOG'),
('Mastiff', 'DOG'),
('Chihuahua', 'DOG'),
('Border Collie', 'DOG'),
('Saint Bernard', 'DOG'),
('Dachshund', 'DOG'),
('Golden Retriever', 'DOG'),
('Pit Bull', 'DOG'),
('Pug', 'DOG'),
('Akita', 'DOG'),
('Bernese Mountain Dog', 'DOG'),
('Bichon Frise', 'DOG'),
('Samoyed', 'DOG'),
('Bullmastiff', 'DOG'),
('Maltese', 'DOG'),
('Weimaraner', 'DOG'),
('Scottish Terrier', 'DOG'),
('Newfoundland', 'DOG');

INSERT INTO soulpaws.shelters (name, phone, email, address, province, postal_code, description)
VALUES
('Happy Paws Shelter', '123-456-7890', 'contact@happypaws.com', '1234 Elm St, Toronto', 'Ontario', 'M4B1B3', 'A welcoming place for pets in need.'),
('Safe Haven Shelter', '234-567-8901', 'info@safehaven.com', '5678 Oak St, Montreal', 'Quebec', 'H1A2B3', 'Providing shelter and care for homeless pets.');

INSERT INTO soulpaws.pets (name, age, shelter_id, breed_id, size, gender, image, description, unique_features, availability_status)
VALUES
('Buddy', 3, 1, 1, 'Medium', 'MALE', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Friendly and playful.', 'Golden fur with a white spot on the chest', 'AVAILABLE_FOR_ADOPTION'),
('Misty', 2, 2, 2, 'Small', 'FEMALE', 'https://images.unsplash.com/photo-1558788353-f76d92427f16', 'Loves to cuddle and play.', 'Brown and white coat, very energetic', 'AVAILABLE_FOR_ADOPTION'),
('Max', 4, 1, 3, 'Large', 'MALE', 'https://i.pinimg.com/736x/e5/b9/81/e5b98110fcd62d6ebe0e636262170175.jpg', 'Loyal and protective.', 'Black fur with tan markings', 'AVAILABLE_FOR_ADOPTION'),
('Bella', 1, 1, 4, 'Medium', 'FEMALE', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Calm and loving.', 'Short and stocky build', 'AVAILABLE_FOR_ADOPTION'),
('Luna', 3, 1, 5, 'Small', 'FEMALE', 'https://en.pimg.jp/107/507/934/1/107507934.jpg', 'Smart and playful.', 'Curly fur, very playful', 'AVAILABLE_FOR_ADOPTION'),
('Rocky', 2, 1, 6, 'Large', 'MALE', 'https://i.imgflip.com/1h99k4.jpg', 'Strong and confident.', 'Muscular build, very strong', 'AVAILABLE_FOR_ADOPTION'),
('Molly', 5, 1, 7, 'Medium', 'FEMALE', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Energetic and friendly.', 'Short fur, very energetic', 'AVAILABLE_FOR_ADOPTION'),
('Daisy', 4, 1, 8, 'Small', 'FEMALE', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToHnajsp-Ngyv8p-VUwm6OAXkUxS0Dx9Q4EA&s', 'Affectionate and friendly.', 'Long fur, loves to cuddle', 'AVAILABLE_FOR_ADOPTION'),
('Oliver', 2, 2, 9, 'Medium', 'MALE', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Playful and vocal.', 'Blue eyes, very vocal', 'AVAILABLE_FOR_ADOPTION'),
('Simba', 3, 2, 10, 'Large', 'MALE', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Gentle giant.', 'Large and gentle', 'AVAILABLE_FOR_ADOPTION'),
('Charlie', 1, 2, 11, 'Small', 'MALE', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Cute and energetic.', 'Small and fluffy', 'AVAILABLE_FOR_ADOPTION'),
('Sophie', 2, 2, 12, 'Medium', 'FEMALE', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Intelligent and alert.', 'Long fur, very alert', 'AVAILABLE_FOR_ADOPTION'),
('Coco', 3, 1, 13, 'Large', 'FEMALE', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Alert and loyal.', 'Sleek black coat', 'AVAILABLE_FOR_ADOPTION'),
('Bailey', 1, 1, 14, 'Small', 'FEMALE', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Gentle and loving.', 'Curly fur, loves to play', 'AVAILABLE_FOR_ADOPTION'),
('Chloe', 4, 1, 15, 'Medium', 'FEMALE', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Energetic and friendly.', 'Spotted coat, very active', 'AVAILABLE_FOR_ADOPTION'),
('Loki', 2, 1, 16, 'Large', 'MALE', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Strong and loyal.', 'Massive build, very loyal', 'AVAILABLE_FOR_ADOPTION'),
('Ginger', 3, 1, 17, 'Small', 'FEMALE', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Lively and alert.', 'Small and lively', 'AVAILABLE_FOR_ADOPTION'),
('Oscar', 5, 2, 18, 'Medium', 'MALE', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Smart and energetic.', 'Smart and energetic', 'AVAILABLE_FOR_ADOPTION'),
('Ruby', 4, 2, 19, 'Large', 'FEMALE', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Gentle and friendly.', 'Gentle and friendly', 'AVAILABLE_FOR_ADOPTION'),
('Buster', 2, 2, 20, 'Small', 'MALE', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Playful and curious.', 'Long body, very curious', 'AVAILABLE_FOR_ADOPTION'),
('Lucy', 3, 2, 21, 'Medium', 'FEMALE', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Friendly and loyal.', 'Golden coat, very friendly', 'AVAILABLE_FOR_ADOPTION'),
('Toby', 1, 2, 22, 'Large', 'MALE', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Strong and friendly.', 'Muscular build, very friendly', 'AVAILABLE_FOR_ADOPTION'),
('Lily', 2, 1, 23, 'Small', 'FEMALE', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Cute and playful.', 'Short and cute', 'AVAILABLE_FOR_ADOPTION'),
('Zeus', 4, 1, 24, 'Medium', 'MALE', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Loyal and protective.', 'Loyal and protective', 'AVAILABLE_FOR_ADOPTION'),
('Maggie', 3, 1, 25, 'Large', 'FEMALE', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Gentle and friendly.', 'Large and gentle', 'AVAILABLE_FOR_ADOPTION'),
('Henry', 2, 1, 26, 'Small', 'MALE', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Playful and friendly.', 'Curly fur, very playful', 'AVAILABLE_FOR_ADOPTION'),
('Sasha', 4, 2, 27, 'Medium', 'FEMALE', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Friendly and energetic.', 'White fur, very friendly', 'AVAILABLE_FOR_ADOPTION'),
('Bruno', 3, 2, 28, 'Large', 'MALE', 'https://images.unsplash.com/photo-1601758123927-9c488f18a3b1', 'Loyal and protective.', 'Muscular build, very loyal', 'AVAILABLE_FOR_ADOPTION'),
('Roxy', 2, 2, 29, 'Small', 'FEMALE', 'https://images.unsplash.com/photo-1555685812-4b7432f46af5', 'Cute and playful.', 'Small and cute', 'AVAILABLE_FOR_ADOPTION'),
('Jake', 1, 2, 30, 'Medium', 'MALE', 'https://images.unsplash.com/photo-1560807707-8cc77767d783', 'Energetic and friendly.', 'Energetic and friendly', 'AVAILABLE_FOR_ADOPTION'),
('Mimi', 3, 2, 31, 'Small', 'FEMALE', 'https://images.unsplash.com/photo-1574158622682-e40e69881006', 'Lively and playful.', 'Lively and playful', 'AVAILABLE_FOR_ADOPTION'),
('Rufus', 4, 2, 32, 'Large', 'MALE', 'https://images.unsplash.com/photo-1592194996308-7d8d4c02b001', 'Gentle and loyal.', 'Gentle and loyal', 'AVAILABLE_FOR_ADOPTION');

INSERT INTO soulpaws.adoption_requests (user_id, pet_id, status)
VALUES
(2, 1, 'Pending'),
(3, 2, 'Pending');