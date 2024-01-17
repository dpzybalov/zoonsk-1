// import 'package:Zoo_Project/repoaitories/animals/animals_repositories.dart';
import 'package:zoonsk/route/rout.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
// apiClient().getAnimals();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(1, 98, 63, 1),
      ),
      routes: route,
    );
  }
}
