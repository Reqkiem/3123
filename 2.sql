INSERT INTO genres
(genre_name)
VALUES
('Rap'), 
('Pop'), 
('Rock'), 
('Punk');

INSERT INTO artists
(executor_name)
VALUES
('Ramstein'), 
('Linkin Park'), 
('Король и шут'), 
('Баста'), 
('Zivert');

INSERT INTO artist_gernes
(genre_id, executor_id)
VALUES
(1, 5),
(2, 4),
(3, 1),
(4, 3),
(3, 2);

INSERT INTO albums
(album_name, album_year)
VALUES
('Будь как дома путник', 1997),
('БАСТА 1', 2006), 
('Vinyl #2', 2021), 
('Rammstein', 2019), 
('Meteora', 2003);

INSERT INTO tracks
(track_name, track_duration, album_id)
VALUES
('Forever Young', 180, 3), 
('Я устал', 228, 1), 
('Rammstein', 206, 4), 
('Pushing My Away', 191, 5), 
('Вечно молодой Мой', 268, 2), 
('Numb', 187, 5);

INSERT INTO artist_albums
(executor_id, album_id)
VALUES
(1, 4), 
(2, 5), 
(3, 1), 
(5, 3), 
(4, 2);

INSERT INTO collections
(collection_name, collection_year)
VALUES
('Наивные песни', 2005), 
('Поколение Брат', 2022), 
('Lost Highway', 1997), 
('Valentine', 2001);

INSERT INTO collections_tracks
(collection_id, track_id)
VALUES
(1, 1), 
(2, 2), 
(3, 4), 
(4, 5);