import 'package:http/http.dart' as http;
import 'dart:convert';


class Env{
  static const Map<String, String> _keys =  {
    'SPOTIFY_CLIENT_ID': String.fromEnvironment('SPOTIFY_CLIENT_ID'),
    'SPOTIFY_CLIENT_SECRET': String.fromEnvironment('SPOTIFY_CLIENT_SECRET'),
  };

  static String _getKey(String key) {
    final value = _keys[key] ?? '';
    if(value.isEmpty) {
      throw Exception('$key não é setada no arquivo Env');
    }
    return value;
  }

  static String get spotifyClientId => _getKey('SPOTIFY_CLIENT_ID');
  static String get spotifyClientSecret => _getKey('SPOTIFY_CLIENT_SECRET');
}

Future<String> getAccessToken() async {
  final clientID = Env.spotifyClientId;
  final clientSecret = Env.spotifyClientSecret;
  
  final credentials = base64.encode(utf8.encode('$clientID:$clientSecret'));
  
  final response = await http.post(
    Uri.parse('https://accounts.spotify.com/api/token'),
    headers: {'Authorization': 'Basic $credentials'},
    body: {'grant_type': 'client_credentials'},
  );
  
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['access_token'];
  } else {
    throw Exception('Falha ao obter o token de acesso do Spotify.');
  }
}
