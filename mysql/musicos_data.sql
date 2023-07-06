USE musica;

-- Insertar géneros
INSERT INTO genero (nombre) VALUES ('Rock');
INSERT INTO genero (nombre) VALUES ('Pop');
INSERT INTO genero (nombre) VALUES ('Hip Hop');
INSERT INTO genero (nombre) VALUES ('Reggae');

-- Insertar canciones
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Bohemian Rhapsody', 355, 1);
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Shape of You', 233, 2);
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Lose Yourself', 326, 3);
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Three Little Birds', 183, 4);

-- Insertar grupos
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Queen', '1970-06-27', NULL);
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Coldplay', '1996-09-19', NULL);
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('The Beatles', '1960-08-01', '1970-04-10');
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Maroon 5', '1994-09-01', NULL);

-- Insertar discográficas
INSERT INTO discografica (nombre, mayor) VALUES ('Universal Music', 1);
INSERT INTO discografica (nombre, mayor) VALUES ('Sony Music', 1);
INSERT INTO discografica (nombre, mayor) VALUES ('Warner Music', 0);

-- Insertar álbumes
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('A Night at the Opera', '1975-11-21', 'portada1.jpg', 1, 1);
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('Parachutes', '2000-07-10', 'portada2.jpg', 2, 1);
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('Abbey Road', '1969-09-26', 'portada3.jpg', 3, 2);
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('Songs About Jane', '2002-06-25', 'portada4.jpg', 4, 3);

-- Insertar canciones en álbumes
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (1, 1);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (2, 1);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (2, 2);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (3, 3);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (4, 4);

-- Insertar artistas
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Freddie', 'Mercury', 'Mercury', '1946-09-05', '1991-11-24');
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Chris', 'Martin', 'Martin', '1977-03-02', NULL);
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Paul', 'McCartney', 'McCartney', '1942-06-18', NULL);
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Adam', 'Levine', 'Levine', '1979-03-18', NULL);

-- Insertar roles
INSERT INTO rol (rol_id, nombre) VALUES (1, 'Vocalista');
INSERT INTO rol (rol_id, nombre) VALUES (2, 'Guitarrista');
INSERT INTO rol (rol_id, nombre) VALUES (3, 'Bajista');
INSERT INTO rol (rol_id, nombre) VALUES (4, 'Baterista');

-- Insertar artistas en grupos
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (1, 1, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (2, 2, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (3, 2, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (3, 3, 2);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (3, 3, 3);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (3, 3, 4);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (4, 4, 1);

-- Insertar más géneros
INSERT INTO genero (nombre) VALUES ('Electrónica');
INSERT INTO genero (nombre) VALUES ('R&B');
INSERT INTO genero (nombre) VALUES ('Country');
INSERT INTO genero (nombre) VALUES ('Jazz');

-- Insertar más canciones
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Sweet Child O'' Mine', 356, 1);
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Uptown Funk', 270, 2);
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Take Me to Church', 241, 3);
INSERT INTO cancion (titulo, duracion, genero_id) VALUES ('Fly Me to the Moon', 174, 4);

-- Insertar más grupos
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Guns N'' Roses', '1985-03-01', NULL);
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Bruno Mars', '2004-01-01', NULL);
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Hozier', '2008-01-01', NULL);
INSERT INTO grupo (nombre, fecha_creacion, fecha_disolucion) VALUES ('Frank Sinatra', '1935-01-01', '1998-05-14');

-- Insertar más discográficas
INSERT INTO discografica (nombre, mayor) VALUES ('EMI', 1);
INSERT INTO discografica (nombre, mayor) VALUES ('Warner Bros. Records', 1);
INSERT INTO discografica (nombre, mayor) VALUES ('Columbia Records', 0);

-- Insertar más álbumes
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('Appetite for Destruction', '1987-07-21', 'portada5.jpg', 5, 1);
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('24K Magic', '2016-11-18', 'portada6.jpg', 6, 2);
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('Hozier', '2014-09-19', 'portada7.jpg', 7, 2);
INSERT INTO album (nombre, fecha_creacion, portada, grupo_id, discografica_id) VALUES ('In the Wee Small Hours', '1955-04-25', 'portada8.jpg', 8, 3);

-- Insertar más canciones en álbumes
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (5, 5);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (6, 5);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (6, 6);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (7, 7);
INSERT INTO cancion_has_album (cancion_id, album_id) VALUES (8, 8);

-- Insertar más artistas
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Axl', 'Rose', 'Rose', '1962-02-06', NULL);
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Peter', 'Hernandez', 'Mars', '1985-10-08', NULL);
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Andrew', 'Hozier-Byrne', 'Hozier', '1990-03-17', NULL);
INSERT INTO artista (nombre, apellido, alias, fecha_nacimiento, fecha_fallecimiento) VALUES ('Frank', 'Sinatra', 'Sinatra', '1915-12-12', '1998-05-14');

-- Insertar más roles
INSERT INTO rol (rol_id, nombre) VALUES (5, 'Teclista');
INSERT INTO rol (rol_id, nombre) VALUES (6, 'Violinista');
INSERT INTO rol (rol_id, nombre) VALUES (7, 'Saxofonista');
INSERT INTO rol (rol_id, nombre) VALUES (8, 'Pianista');

-- Insertar más artistas en grupos
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (5, 5, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (6, 6, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (7, 7, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (8, 8, 1);
INSERT INTO grupo_has_artista (grupo_id, artista_id, rol_rol_id) VALUES (8, 8, 6);