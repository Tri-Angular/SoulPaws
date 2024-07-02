INSERT INTO soulpaws.users (name, age, email, password, province, role)
VALUES
('Alice Admin', 35, 'admin@admin.com', '$2a$12$FJOBBZVJg5LjVgj3QFZkH.OSTS/dYT2Bf71H7KnlkNb2PU5eIaJ8m', 'Granada', 'ADMIN'),
('Jose Enrique', 28, 'jose@example.com', 'qwerty123', 'Granada', 'USER'),
('Carlos Perez', 30, 'carlos.perez@example.com', 'hashedpassword3', 'Madrid', 'USER'),
('Refugio Felices', 40, 'contacto@refugiofelices.com', '$2a$12$7dyMRUvNH20slWu6bvEL9eVOKsrODIbtE/w2BIvglOk9640sxI57K', 'Granada', 'SHELTER');

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
('Refugio Felices', '123-456-7890', 'contacto@refugiofelices.com', 'Calle Falsa 123, Granada', 'Granada', '18001', 'Un lugar acogedor para mascotas necesitadas.'),
('Hogar Seguro', '234-567-8901', 'info@hogarseguro.com', 'Avenida Siempreviva 742, Madrid', 'Madrid', '28001', 'Proporcionando refugio y cuidado a mascotas sin hogar.');

INSERT INTO soulpaws.pets (name, age, shelter_id, breed_id, size, gender, image, description, unique_features, availability_status)
VALUES
('Buddy', 3, 1, 1, 'Medium', 'MALE', 'https://www.javer-keleb.com/wp-content/uploads/2023/10/photo_2023-09-25_18-31-51.jpg', 'Amigable y juguetón.', 'Pelaje dorado con una mancha blanca en el pecho', 'AVAILABLE_FOR_ADOPTION'),
('Misty', 2, 2, 2, 'Small', 'FEMALE', 'https://cdn.pixabay.com/photo/2020/05/08/08/04/dog-5144663_1280.jpg', 'Le encanta acurrucarse y jugar.', 'Pelaje marrón y blanco, muy enérgica', 'AVAILABLE_FOR_ADOPTION'),
('Max', 4, 1, 3, 'Large', 'MALE', 'https://cdn.shopify.com/s/files/1/0799/5301/files/IMG_20190822_083335_354_1024x1024.jpg?v=1635878043', 'Leal y protector.', 'Pelaje negro con marcas marrones', 'AVAILABLE_FOR_ADOPTION'),
('Bella', 1, 1, 4, 'Medium', 'FEMALE', 'https://www.boredpanda.com/blog/wp-content/uploads/2021/09/cute-bulldog-pictures-6-61487096e3d2f__700.jpg', 'Tranquila y cariñosa.', 'Cuerpo corto y robusto', 'AVAILABLE_FOR_ADOPTION'),
('Luna', 3, 1, 5, 'Small', 'FEMALE', 'https://media.istockphoto.com/id/534133234/photo/closeup-shaggy-poodle-dog-squinting-looking-in-camera-isolated-black.jpg?s=612x612&w=0&k=20&c=fYiGqqkYQa58afF0QDXX7I6IU_xjVQo6Pk4HvwGBfKg=', 'Inteligente y juguetona.', 'Pelaje rizado, muy juguetona', 'AVAILABLE_FOR_ADOPTION'),
('Rocky', 2, 1, 6, 'Large', 'MALE', 'https://dogtime.com/wp-content/uploads/sites/12/2023/11/GettyImages-1198147566-e1701133343267.jpg?w=1024', 'Fuerte y seguro.', 'Cuerpo musculoso, muy fuerte', 'AVAILABLE_FOR_ADOPTION'),
('Molly', 5, 1, 7, 'Medium', 'FEMALE', 'https://lucasylola.es/blog/wp-content/uploads/2022/02/WhatsApp-Image-2022-02-07-at-09.12.45.jpeg', 'Enérgica y amigable.', 'Pelaje corto, muy enérgica', 'AVAILABLE_FOR_ADOPTION'),
('Daisy', 4, 1, 8, 'Small', 'FEMALE', 'https://www.hundeo.com/wp-content/uploads/2019/01/Shih-Tzu-1.jpg.webp', 'Cariñosa y amigable.', 'Pelaje largo, le encanta acurrucarse', 'AVAILABLE_FOR_ADOPTION'),
('Oliver', 2, 2, 9, 'Medium', 'MALE', 'https://dogtime.com/wp-content/uploads/sites/12/2023/11/GettyImages-1454565264-e1701120522406.jpg?w=1024', 'Juguetón y vocal.', 'Ojos azules, muy vocal', 'AVAILABLE_FOR_ADOPTION'),
('Simba', 3, 2, 10, 'Large', 'MALE', 'https://i.pinimg.com/originals/df/f1/bb/dff1bb1fa26b657d3ccfa3983aca25f0.jpg', 'Gigante gentil.', 'Grande y gentil', 'AVAILABLE_FOR_ADOPTION'),
('Charlie', 1, 2, 11, 'Small', 'MALE', 'https://media.istockphoto.com/id/1249175301/es/foto/perro-pomerania.jpg?s=612x612&w=0&k=20&c=6EZsLxHRytV1JjF9nFr8k9dK3wruUxqV0bp_m54wnw0=', 'Lindo y enérgico.', 'Pequeño y esponjoso', 'AVAILABLE_FOR_ADOPTION'),
('Sophie', 2, 2, 12, 'Medium', 'FEMALE', 'https://image.petmd.com/files/styles/978x550/public/2022-10/collie-dog.jpg?w=2048&q=75', 'Inteligente y alerta.', 'Pelaje largo, muy alerta', 'AVAILABLE_FOR_ADOPTION'),
('Coco', 3, 1, 13, 'Large', 'FEMALE', 'https://perroasistencia.es/wp-content/uploads/2023/09/doberman-pinscher-perro-gracioso-emocional-sobre-fondo-estudio-scaled-e1695344255688.jpg', 'Alerta y leal.', 'Pelaje negro y brillante', 'AVAILABLE_FOR_ADOPTION'),
('Bailey', 1, 1, 14, 'Small', 'FEMALE', 'https://media.graphassets.com/output=format:webp/um4kkcVhRoO63IkxrlMa', 'Gentil y cariñosa.', 'Pelaje rizado, le encanta jugar', 'AVAILABLE_FOR_ADOPTION'),
('Chloe', 4, 1, 15, 'Medium', 'FEMALE', 'https://static.wixstatic.com/media/db516d_3cee94c61dd34b25addd10b1d2dc682a~mv2.jpg/v1/fill/w_1199,h_797,al_c,q_85,usm_1.20_1.00_0.01,enc_auto/db516d_3cee94c61dd34b25addd10b1d2dc682a~mv2.jpg', 'Enérgica y amigable.', 'Pelaje moteado, muy activa', 'AVAILABLE_FOR_ADOPTION'),
('Loki', 2, 1, 16, 'Large', 'MALE', 'https://petplan.es/wp-content/uploads/2021/01/perro-mestizo-raza.png', 'Fuerte y leal.', 'Construcción masiva, muy leal', 'AVAILABLE_FOR_ADOPTION'),
('Ginger', 3, 1, 17, 'Small', 'FEMALE', 'https://estaticos-cdn.prensaiberica.es/clip/59ca56ec-1332-4c33-a2eb-6ef863b65a56_16-9-discover-aspect-ratio_default_0.webp', 'Viva y alerta.', 'Pequeña y vivaz', 'AVAILABLE_FOR_ADOPTION'),
('Oscar', 5, 2, 18, 'Medium', 'MALE', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Heterochromia_dog_sideways.jpg/2560px-Heterochromia_dog_sideways.jpg', 'Inteligente y enérgico.', 'Inteligente y enérgico', 'AVAILABLE_FOR_ADOPTION'),
('Ruby', 4, 2, 19, 'Large', 'FEMALE', 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_700/MjAzNTE3MzQ5MDU0MjYxMDQ0/saint-bernard-guide.webp', 'Gentil y amigable.', 'Gentil y amigable', 'AVAILABLE_FOR_ADOPTION'),
('Buster', 2, 2, 20, 'Small', 'MALE', 'https://www.zooplus.es/magazine/wp-content/uploads/2022/02/teckel-miniatura-Copy.jpeg', 'Juguetón y curioso.', 'Cuerpo largo, muy curioso', 'AVAILABLE_FOR_ADOPTION'),
('Lucy', 3, 2, 21, 'Medium', 'FEMALE', 'https://pamipe.com/wp-content/uploads/2022/09/Golden-Retriever-3.png', 'Amigable y leal.', 'Pelaje dorado, muy amigable', 'AVAILABLE_FOR_ADOPTION'),
('Toby', 1, 2, 22, 'Large', 'MALE', 'https://i.pinimg.com/564x/d6/a4/00/d6a40051fa6af1b48bab0feb8c8c8691.jpg', 'Fuerte y amigable.', 'Construcción musculosa, muy amigable', 'AVAILABLE_FOR_ADOPTION'),
('Lily', 2, 1, 23, 'Small', 'FEMALE', 'https://www.tiendanimal.es/articulos/wp-content/uploads/2020/07/carlino-sentado-1200x800.jpg', 'Linda y juguetona.', 'Corta y linda', 'AVAILABLE_FOR_ADOPTION'),
('Zeus', 4, 1, 24, 'Medium', 'MALE', 'https://www.rover.com/blog/wp-content/uploads/akita-min-1024x683.jpg', 'Leal y protector.', 'Leal y protector', 'AVAILABLE_FOR_ADOPTION'),
('Maggie', 3, 1, 25, 'Large', 'FEMALE', 'https://cdn.redcanina.es/wp-content/uploads/2019/01/14205435/perro-viejo.jpg', 'Gentil y amigable.', 'Grande y gentil', 'AVAILABLE_FOR_ADOPTION'),
('Henry', 2, 1, 26, 'Small', 'MALE', 'https://img.freepik.com/foto-gratis/vista-lindo-perro-disfrutando-tiempo-naturaleza-parque_23-2150407401.jpg', 'Juguetón y amigable.', 'Pelaje rizado, muy juguetón', 'AVAILABLE_FOR_ADOPTION'),
('Sasha', 4, 2, 27, 'Medium', 'FEMALE', 'https://ambientlounge.cl/cdn/shop/articles/blog_1d9e0fa6-6fcc-4082-9529-eb594180aefb.jpg?v=1686870462', 'Amigable y enérgica.', 'Pelaje blanco, muy amigable', 'AVAILABLE_FOR_ADOPTION'),
('Bruno', 3, 2, 28, 'Large', 'MALE', 'https://png.pngtree.com/thumb_back/fw800/background/20221115/pngtree-english-mastiff-show-english-dog-photo-image_4459436.jpg', 'Leal y protector.', 'Construcción musculosa, muy leal', 'AVAILABLE_FOR_ADOPTION'),
('Roxy', 2, 2, 29, 'Small', 'FEMALE', 'https://protectorabaix.org/imas/animales/_3244/a_32441632773311.jpg', 'Linda y juguetona.', 'Pequeña y linda', 'AVAILABLE_FOR_ADOPTION'),
('Jake', 1, 2, 30, 'Medium', 'MALE', 'https://www.mascotas.com/cms/revista/Revista_623df708e9a71_25032022.jpg', 'Enérgico y amigable.', 'Enérgico y amigable', 'AVAILABLE_FOR_ADOPTION'),
('Mimi', 3, 2, 31, 'Small', 'FEMALE', 'https://www.hundeo.com/wp-content/uploads/2019/08/Scottish-Terrier-am-See.jpg', 'Vivaz y juguetona.', 'Vivaz y juguetona', 'AVAILABLE_FOR_ADOPTION'),
('Rufus', 4, 2, 32, 'Large', 'MALE', 'https://www.veterinariotorrejon.com/mundo_mascotas/PERROS_MAS_CAROS/FOTOS/92-schnauzer%20gigante.jpg', 'Gentil y leal.', 'Gentil y leal', 'AVAILABLE_FOR_ADOPTION');

INSERT INTO soulpaws.adoption_requests (user_id, pet_id, status)
VALUES
(2, 1, 'PENDING'),
(3, 2, 'PENDING');