select track_name, track_duration
from tracks
where track_duration = (select max(track_duration) from tracks);

select track_name, track_duration
from tracks
where track_duration >= 210;

select collection_name, collection_year 
from collections
where collection_year between 2018 and 2022;

select artists_name
from artists
where artist_name not like '% %';

select track_name
from tracks
where lower(track_name) like 'мой %' or lower(track_name) like '% мой' or lower(track_name) like '% мой %' or lower(track_name) like 'мой' 
or lower(track_name) like 'my %' or lower(track_name) like '% my' or lower(track_name) like '% my %' or lower(track_name) like 'my';



============================================================================================================================================



select genre_name, count (artist_name) from artists e 
join genres_artists ge  on e.artist_id = ge.artist_id 
join genres g on ge.genre_id = g.genre_id 
group by g.genre_id;

select count(track_name) from tracks t 
join albums a on a.album_id = t.album_id 
where a.album_year between 2019 and 2020;

select album_name, AVG(track_duration) from tracks t 
join albums a on a.album_id = t.album_id 
group by a.album_name;

select artist_name from artists e 
where artist_name not in (
select artist_name from albums a 
join artists_albums ea on a.album_id = ea.album_id 
join artists e on ea.executor_id = e.executor_id
where a.album_year = 2020);

select collection_name from collections c 
join collections_tracks ct on c.collection_id = ct.collection_id 
join tracks t on ct.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join artists_albums ea on a.album_id = ea.album_id 
join artists e on ea.artist_id = e.artist_id 
where e.artist_name like 'Ramstein';