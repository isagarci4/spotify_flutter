import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> song;
  final String imageUrl;

  Playlist({
    required this.title, 
    required this.song, 
    required this.imageUrl
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'Gospel', 
      song: Song.songs, 
      imageUrl: 'https://i.scdn.co/image/ab67616d0000b273ba5c2a82f933f01314399115'
    ),
    Playlist(
      title: 'Rock', 
      song: Song.songs, 
      imageUrl: 'https://i.scdn.co/image/ab67616d0000b273af6641813e16d6c1fc430343'
    ),
    Playlist(
      title: 'Pop', 
      song: Song.songs, 
      imageUrl: 'https://i.scdn.co/image/ab67616d0000b2739522042f86d0bb0d4e9e3783'
    ),
  ];
}