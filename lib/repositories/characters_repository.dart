import 'package:darq/darq.dart';
import 'package:injectable/injectable.dart';

import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/services/http_client/http_client.dart';

@injectable
class CharactersRepository {
  final HttpClient _httpClient;

  const CharactersRepository(this._httpClient);

  String get _charactersEndpointUrl => '/characters';
  String get _characterEndpointUrl => '/character';

  Future<Character> getCharacter(String id) async {
    final response = await _httpClient.get('$_characterEndpointUrl/$id');

    return (response.data as List)
        .map((jsonCharacter) => Character.fromJson(jsonCharacter))
        .firstOrDefault(
          defaultValue: const Character(),
        )!;
  }

  Future<List<Character>> getAllCharacters() async {
    final response = await _httpClient.get(_charactersEndpointUrl);

    return ((response.data as List))
        .map((jsonCharacter) => Character.fromJson(jsonCharacter))
        .toList();
  }
}
