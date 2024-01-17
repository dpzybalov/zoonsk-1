import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class homelist extends StatefulWidget {
  const homelist({super.key});
  @override
  State<homelist> createState() => _homelist();
}

class _homelist extends State<homelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Главная',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'museo700',
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 163,
                    child: Image(image: appimages.group1),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Новости',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'museo700',
                            color: Color.fromARGB(255, 41, 45, 50))),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 116,
                    child: Image(image: appimages.group2),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 116,
                    child: Image(image: appimages.group3),
                  ),
                  SizedBox(height: 21),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Тематические маршруты',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'museo700',
                            color: Color.fromARGB(255, 41, 45, 50))),
                  ),
                  SizedBox(height: 17),
                  Container(
                    width: double.infinity,
                    height: 106,
                    child: Image(image: appimages.group4),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    height: 106,
                    child: Image(image: appimages.group5),
                  ),
                  SizedBox(height: 21),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Мероприятия',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'museo700',
                            color: Color.fromARGB(255, 41, 45, 50))),
                  ),
                  SizedBox(height: 21),
                  Container(
                    width: double.infinity,
                    height: 106,
                    child: Image(image: appimages.group6),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    height: 106,
                    child: Image(image: appimages.group7),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
