resource "spotify_playlist" "Bollywood" {
  name        = "Bollywood"
  tracks  =["1clTYCv9mpA1p0t5juBWxb","4KbEYcu6ZO7RjXF7HSDJYw"]
}
data "spotify_search_track" "Rahman" {
  artist = "A.R.Rahman"
}
resource "spotify_playlist" "Bollywoody" {
  name        = "A.R.Rahman Songs"
  tracks  =[data.spotify_search_track.Rahman.tracks[0].id,
            data.spotify_search_track.Rahman.tracks[1].id,
            data.spotify_search_track.Rahman.tracks[2].id,
            data.spotify_search_track.Rahman.tracks[3].id,
            data.spotify_search_track.Rahman.tracks[4].id,
            data.spotify_search_track.Rahman.tracks[5].id]                   
}




