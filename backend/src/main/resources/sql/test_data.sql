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
('Buddy', 3, 1, 'Medium', 'MALE', 'Labrador retriever', 'https://www.javer-keleb.com/wp-content/uploads/2023/10/photo_2023-09-25_18-31-51.jpg', 'Friendly and playful.'),
('Misty', 2, 2, 'Small', 'FEMALE', 'Beagle', 'https://cdn.pixabay.com/photo/2020/05/08/08/04/dog-5144663_1280.jpg', 'Loves to cuddle and play.'),
('Max', 4, 1, 'Large', 'MALE', 'Pastor alemán', 'https://cdn.shopify.com/s/files/1/0799/5301/files/IMG_20190822_083335_354_1024x1024.jpg?v=1635878043', 'Loyal and protective.'),
('Bella', 1, 1, 'Medium', 'FEMALE', 'Bulldog francés', 'https://www.boredpanda.com/blog/wp-content/uploads/2021/09/cute-bulldog-pictures-6-61487096e3d2f__700.jpg', 'Calm and loving.'),
('Luna', 1, 1, 'Small', 'FEMALE', 'Caniche toy', 'https://cdn1.tedsby.com/tb/large/storage/3/6/8/368298/artist-toy-dog-white-poodle-by-oksana-zaklinskaya.jpg', 'Smart and playful.'),
('Rocky', 2, 1, 'Large', 'MALE', 'Rottweiler', 'https://dogtime.com/wp-content/uploads/sites/12/2023/11/GettyImages-1198147566-e1701133343267.jpg?w=1024', 'Strong and confident.'),
('Molly', 1, 1, 'Medium', 'FEMALE', 'Boxer', 'https://lucasylola.es/blog/wp-content/uploads/2022/02/WhatsApp-Image-2022-02-07-at-09.12.45.jpeg', 'Energetic and friendly.'),
('Daisy', 4, 1, 'Small', 'FEMALE', 'Shih Tzu', 'https://www.hundeo.com/wp-content/uploads/2019/01/Shih-Tzu-1.jpg.webp', 'Affectionate and friendly.'),
('Oliver', 2, 2, 'Medium', 'MALE', 'Husky', 'https://dogtime.com/wp-content/uploads/sites/12/2023/11/GettyImages-1454565264-e1701120522406.jpg?w=1024', 'Playful and vocal.'),
('Simba', 3, 2, 'Large', 'MALE', 'Gran Danés', 'https://i.pinimg.com/originals/df/f1/bb/dff1bb1fa26b657d3ccfa3983aca25f0.jpg', 'Gentle giant.'),
('Charly', 1, 2, 'Small', 'MALE', 'Pomerania', 'https://media.istockphoto.com/id/1249175301/es/foto/perro-pomerania.jpg?s=612x612&w=0&k=20&c=6EZsLxHRytV1JjF9nFr8k9dK3wruUxqV0bp_m54wnw0=', 'Cute and energetic.'),
('Sophie', 2, 2, 'Medium', 'FEMALE', 'Collie', 'https://image.petmd.com/files/styles/978x550/public/2022-10/collie-dog.jpg?w=2048&q=75', 'Intelligent and alert.'),
('Coco', 3, 1, 'Large', 'FEMALE', 'Doberman', 'https://perroasistencia.es/wp-content/uploads/2023/09/doberman-pinscher-perro-gracioso-emocional-sobre-fondo-estudio-scaled-e1695344255688.jpg', 'Alert and loyal.'),
('Bailey', 1, 1, 'Small', 'FEMALE', 'Cocker Spaniel', 'https://media.graphassets.com/output=format:webp/um4kkcVhRoO63IkxrlMa', 'Gentle and loving.'),
('Chloe', 4, 1, 'Medium', 'MALE', 'Dálmata', 'https://static.wixstatic.com/media/db516d_3cee94c61dd34b25addd10b1d2dc682a~mv2.jpg/v1/fill/w_1199,h_797,al_c,q_85,usm_1.20_1.00_0.01,enc_auto/db516d_3cee94c61dd34b25addd10b1d2dc682a~mv2.jpg', 'Energetic and friendly.'),
('Loki', 2, 1, 'Large', 'MALE', 'Mestizo', 'https://petplan.es/wp-content/uploads/2021/01/perro-mestizo-raza.png', 'Strong and loyal.'),
('Ginger', 3, 1, 'Small', 'FEMALE', 'Chihuahua', 'https://estaticos-cdn.prensaiberica.es/clip/59ca56ec-1332-4c33-a2eb-6ef863b65a56_16-9-discover-aspect-ratio_default_0.webp', 'Lively and alert.'),
('Oscar', 6, 2, 'Medium', 'MALE', 'Border Collie', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Heterochromia_dog_sideways.jpg/2560px-Heterochromia_dog_sideways.jpg', 'Smart and energetic.'),
('Ruby', 4, 2, 'Large', 'FEMALE', 'San Bernardo', 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_700/MjAzNTE3MzQ5MDU0MjYxMDQ0/saint-bernard-guide.webp', 'Gentle and friendly.'),
('Buster', 2, 2, 'Small', 'MALE', 'Teckel', 'https://www.zooplus.es/magazine/wp-content/uploads/2022/02/teckel-miniatura-Copy.jpeg', 'Playful and curious.'),
('Lucy', 3, 2, 'Medium', 'FEMALE', 'Golden Retriever', 'https://pamipe.com/wp-content/uploads/2022/09/Golden-Retriever-3.png', 'Friendly and loyal.'),
('Toby', 1, 2, 'Large', 'MALE', 'Pit Bull', 'https://scontent-mad2-1.xx.fbcdn.net/v/t39.30808-6/299596589_447655784088749_7630779265743608469_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=ySJRhD_cejMQ7kNvgHxnCls&_nc_ht=scontent-mad2-1.xx&oh=00_AYDIX3CIgXjByifO9nSU-f3eeN7Z5MLU6R1lc8naGF198Q&oe=66839A71', 'Strong and friendly.'),
('Lily', 2, 1, 'Small', 'FEMALE', 'Carlino', 'https://www.tiendanimal.es/articulos/wp-content/uploads/2020/07/carlino-sentado-1200x800.jpg', 'Cute and playful.'),
('Zeus', 4, 1, 'Medium', 'MALE', 'Akita Inu', 'https://www.rover.com/blog/wp-content/uploads/akita-min-1024x683.jpg', 'Loyal and protective.'),
('Maggie', 3, 1, 'Large', 'FEMALE', 'Mestizo', 'https://cdn.redcanina.es/wp-content/uploads/2019/01/14205435/perro-viejo.jpg', 'Gentle and friendly.'),
('Henry', 1, 1, 'Small', 'MALE', 'Bichon Maltés', 'https://img.freepik.com/foto-gratis/vista-lindo-perro-disfrutando-tiempo-naturaleza-parque_23-2150407401.jpg', 'Playful and friendly.'),
('Sasha', 4, 2, 'Medium', 'FEMALE', 'Samoyedo', 'https://ambientlounge.cl/cdn/shop/articles/blog_1d9e0fa6-6fcc-4082-9529-eb594180aefb.jpg?v=1686870462', 'Friendly and energetic.'),
('Bruno', 3, 2, 'Large', 'MALE', 'Mastín inglés', 'https://png.pngtree.com/thumb_back/fw800/background/20221115/pngtree-english-mastiff-show-english-dog-photo-image_4459436.jpg', 'Loyal and protective.'),
('Roxy', 1, 2, 'Small', 'FEMALE', 'Mestizo', 'https://protectorabaix.org/imas/animales/_3244/a_32441632773311.jpg', 'Cute and playful.'),
('Jake', 1, 2, 'Large', 'MALE', 'Braco de Weimar', 'https://www.mascotas.com/cms/revista/Revista_623df708e9a71_25032022.jpg', 'Energetic and friendly.'),
('Mimi', 3, 2, 'Small', 'FEMALE', 'Terrier escocés', 'https://www.hundeo.com/wp-content/uploads/2019/08/Scottish-Terrier-am-See.jpg', 'Lively and playful.'),
('Rufus', 4, 2, 'Large', 'MALE', 'Schnauzer gigante', 'https://www.veterinariotorrejon.com/mundo_mascotas/PERROS_MAS_CAROS/FOTOS/92-schnauzer%20gigante.jpg', 'Gentle and loyal.');

INSERT INTO soulpaws.pet_profiles (pet_id, unique_features, availability_status)
VALUES
(1, 'Pelaje dorado con una mancha blanca en el pecho', 'DISPONIBLE_PARA_ADOPCIÓN'),
(2, 'Pelaje marrón y blanco, muy enérgico', 'DISPONIBLE_PARA_ADOPCIÓN'),
(3, 'Pelaje negro con marcas marrón claro', 'DISPONIBLE_PARA_ADOPCIÓN'),
(4, 'Cuerpo corto y robusto', 'DISPONIBLE_PARA_ADOPCIÓN'),
(5, 'Pelaje rizado, muy juguetón', 'DISPONIBLE_PARA_ADOPCIÓN'),
(6, 'Cuerpo musculoso, muy fuerte', 'DISPONIBLE_PARA_ADOPCIÓN'),
(7, 'Pelaje corto, muy enérgico', 'DISPONIBLE_PARA_ADOPCIÓN'),
(8, 'Pelaje largo, le encanta acurrucarse', 'DISPONIBLE_PARA_ADOPCIÓN'),
(9, 'Ojos azules, muy vocal', 'DISPONIBLE_PARA_ADOPCIÓN'),
(10, 'Grande y gentil', 'DISPONIBLE_PARA_ADOPCIÓN'),
(11, 'Pequeño y esponjoso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(12, 'Pelaje largo, muy alerta', 'DISPONIBLE_PARA_ADOPCIÓN'),
(13, 'Pelaje negro y liso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(14, 'Pelaje rizado, le encanta jugar', 'DISPONIBLE_PARA_ADOPCIÓN'),
(15, 'Pelaje manchado, muy activo', 'DISPONIBLE_PARA_ADOPCIÓN'),
(16, 'Cuerpo masivo, muy leal', 'DISPONIBLE_PARA_ADOPCIÓN'),
(17, 'Pequeño y vivaz', 'DISPONIBLE_PARA_ADOPCIÓN'),
(18, 'Inteligente y enérgico', 'DISPONIBLE_PARA_ADOPCIÓN'),
(19, 'Grande y amistoso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(20, 'Cuerpo largo, muy curioso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(21, 'Pelaje dorado, muy amistoso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(22, 'Cuerpo musculoso, muy amistoso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(23, 'Pequeño y lindo', 'DISPONIBLE_PARA_ADOPCIÓN'),
(24, 'Leal y protector', 'DISPONIBLE_PARA_ADOPCIÓN'),
(25, 'Grande y gentil', 'DISPONIBLE_PARA_ADOPCIÓN'),
(26, 'Pelaje rizado, muy juguetón', 'DISPONIBLE_PARA_ADOPCIÓN'),
(27, 'Pelaje blanco, muy amistoso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(28, 'Cuerpo musculoso, muy leal', 'DISPONIBLE_PARA_ADOPCIÓN'),
(29, 'Pequeño y lindo', 'DISPONIBLE_PARA_ADOPCIÓN'),
(30, 'Enérgico y amistoso', 'DISPONIBLE_PARA_ADOPCIÓN'),
(31, 'Vivaz y juguetón', 'DISPONIBLE_PARA_ADOPCIÓN'),
(32, 'Gentil y leal', 'DISPONIBLE_PARA_ADOPCIÓN');

INSERT INTO soulpaws.adoption_requests (user_id, pet_profile_id, status)
VALUES
(2, 1, 'Pending'),
(3, 2, 'Pending');