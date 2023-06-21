import 'package:flutter/material.dart';

class Song {
  final String title;
  final String description;
  final String url;
  final NetworkImage coverUrl;

  Song({
    required this.title, 
    required this.description, 
    required this.url, 
    required this.coverUrl
  });
  
  static List<Song> songs = [
    Song(
      title: 'Nova Canção', 
      description: 'Nova Canção', 
      url: '', 
      coverUrl: const NetworkImage(
        'https://i.scdn.co/image/ab67616d0000b273ba5c2a82f933f01314399115'
      )
    ),
    Song(
      title: 'Não te abandono', 
      description: 'Não te abandono', 
      url: '', 
      coverUrl: const NetworkImage(
        'https://i.scdn.co/image/ab67616d0000b273af6641813e16d6c1fc430343'
      )
    ),
    Song(
      title: 'Because Of You', 
      description: 'Because Of You', 
      url: '', 
      coverUrl: const NetworkImage(
        'https://i.scdn.co/image/ab67616d0000b2739522042f86d0bb0d4e9e3783'
      )
    ),
  ];
}