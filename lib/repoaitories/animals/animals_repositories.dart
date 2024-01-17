// import 'dart:convert';
// import 'dart:io';

// class apiClient {
//   final Client = HttpClient();

//   void getAnimals() async {
//     final url = Uri.parse('http://78.153.7.158/animals');
//     final request = await Client.getUrl(url);
//     final Response = await request.close();
//     final jsonStrings = await Response.transform(utf8.decoder).toList();
//     final jsonString = jsonStrings.join();
//     final json = jsonDecode(jsonString) as List<dynamic>;
//     json.map((e) => Post.fromJson);
//   }
// }
