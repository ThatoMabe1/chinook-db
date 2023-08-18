select count(*) from artists;

select * from playlists where Name Like 'M%'

select * from artists where Name = 'Lost'

select * from albums where ArtistId = 150;


---Find all the artists for a given Genre

select * from artists 
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 17;

SELECT *
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
WHERE genres.Name = 'Hip Hop/Rap';

SELECT *
FROM playlists
JOIN playlist_track ON playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = 'Classical'

SELECT DISTINCT *
FROM genres
JOIN tracks ON tracks.GenreId = genres.GenreID
JOIN albums ON albums.album_id = songs.album_id
WHERE genre.Name = 'Rock';

---Find the Playlist with the most / least songs



--- Find the total for a given in ( will need a sum)

select * from invoices where invoices.InvoiceId = 17;

--- Find the biggest/smallest invoice amount

select InvoiceId, max(Total) from invoices;
select InvoiceId, min(Total) from invoices;

-- Find the artis with the most/least songs

select artists.Name, count(*) as TrackCount
from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.ArtistId
group by artists.Name
order by TrackCount DESC
---order by TrackCount ASC
limit 5;

