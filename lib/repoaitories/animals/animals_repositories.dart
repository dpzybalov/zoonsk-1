import 'dart:convert';
import 'dart:io';

import 'package:zoonsk/repoaitories/modelanimals/animals_model.dart';

class apiClient {
  final Client = HttpClient();

  Future<List<Animalsname>> getAnimals() async {
    final url = Uri.parse('http://78.153.7.158/animals');
    final request = await Client.getUrl(url);
    final Response = await request.close();
    final jsonStrings = await Response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final json = jsonDecode(jsonString) as List<dynamic>;
    final animalss = json
        .map((dynamic e) => Animalsname.fromJson(e as Map<String, dynamic>))
        .toList();

    return animalss;
  }
}
