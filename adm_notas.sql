CREATE TABLE `users` (
   `id` INT NOT NULL,
   `name` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL,
   `title` VARCHAR(100) NOT NULL,
   `create_fec` DATE NOT NULL,
   `update_fec` DATE,
   `description` TEXT,
   `persistance` TINYINT NOT NULL,
   `id_user` INT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL,
   `name` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes_categories` (
   `id` INT NOT NULL,
   `id_notes` INT NOT NULL,
   `id_categories` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_98212798-73f4-42fe-98ab-395f37b9162d` FOREIGN KEY (`id_user`) REFERENCES `users`(`id`);

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_a404d40b-4488-47d2-a74b-15b8b245499f` FOREIGN KEY (`id_notes`) REFERENCES `notes`(`id`);

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_99abf870-903e-4d8f-9cb7-4908351c2752` FOREIGN KEY (`id_categories`) REFERENCES `categories`(`id`);


INSERT INTO users (id, name, email)
VALUES (1, 'Mathias', 'asdasd@asas.com.ar'), 
(2, 'Pedro', 'asdasd@asas.com.ar'),
(3, 'Juan', 'asdasd@asas.com.ar'),
(4, 'Lucas', 'asdasd@asas.com.ar'),
(5, 'Sabrina', 'asdasd@asas.com.ar'),
(6, 'Victoria', 'asdasd@asas.com.ar'),
(7, 'Agustina', 'asdasd@asas.com.ar'),
(8, 'Mateo', 'asdasd@asas.com.ar'),
(9, 'Silvia', 'asdasd@asas.com.ar'),
(10, 'Angel', 'asdasd@asas.com.ar');

INSERT INTO notes (id, title , create_fec, description, persistance, id_user)
VALUES (1, 'Titulo nota 1', '2021-10-27', 'Descripcion 1', 0, 1), 
(2, 'Titulo nota 2', '2021-10-27', 'Descripcion 2', 1, 2),
(3, 'Titulo nota 3', '2021-10-27', 'Descripcion 3', 0, 4),
(4, 'Titulo nota 4', '2021-10-27', 'Descripcion 4', 1, 7),
(5, 'Titulo nota 5', '2021-10-27', 'Descripcion 5', 0, 3),
(6, 'Titulo nota 6', '2021-10-27', 'Descripcion 6', 1, 6),
(7, 'Titulo nota 7', '2021-10-27', 'Descripcion 7', 0, 9),
(8, 'Titulo nota 8', '2021-10-27', 'Descripcion 8', 1, 2),
(9, 'Titulo nota 9', '2021-10-27', 'Descripcion 9', 1, 4),
(10, 'Titulo nota 10', '2021-10-27', 'Descripcion 10', 0, 6);

INSERT INTO  categories (id, name)
VALUES (1, 'Musica'), 
(2, 'Deportes'),
(3, 'Ciencia'),
(4, 'Policial'),
(5, 'Juego'), 
(6, 'Literatura'),
(7, 'Matematica'),
(8, 'Sociales'),
(9, 'Politica'),
(10, 'Medio Ambiente');

INSERT INTO  notes_categories (id, id_notes, id_categories)
VALUES (1, 1, 1), 
(2, 2, 2), 
(3, 3, 1), 
(4, 4, 3), 
(5, 5, 1), 
(6, 6, 6), 
(7, 7, 8), 
(8, 8, 10), 
(9, 9, 3), 
(10, 10, 7);