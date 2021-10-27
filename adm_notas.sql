CREATE TABLE `Users` (
   `id` INT NOT NULL,
   `name` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `Notes` (
   `id` INT NOT NULL,
   `title` VARCHAR(100) NOT NULL,
   `create_fec` DATE NOT NULL,
   `update_fec` DATE,
   `description` TEXT,
   `persistance` TINYINT NOT NULL,
   `id_user` INT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `Categories` (
   `id` INT NOT NULL,
   `name` VARCHAR(255) NOT NULL,
   `id_note` INT,
   PRIMARY KEY (`id`)
);


ALTER TABLE `Notes` ADD CONSTRAINT `FK_98212798-73f4-42fe-98ab-395f37b9162d` FOREIGN KEY (`id_user`) REFERENCES `Users`(`id`);

ALTER TABLE `Categories` ADD CONSTRAINT `FK_d49d5a27-c6c1-4345-8ef3-fd8f7edd9490` FOREIGN KEY (`id_note`) REFERENCES `Notes`(`id`);


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

INSERT INTO  categories (id, name, id_note)
VALUES (1, 'Musica', 2), 
(2, 'Deportes', 4),
(3, 'Musica', 6),
(4, 'Ciencia', 7),
(5, 'Policial', 2),
(6, 'Medio Ambiente', 1),
(7, 'Ciencia', 1),
(8, 'Musica', 3),
(9, 'Policial', 7),
(10, 'Deportes', 9);

