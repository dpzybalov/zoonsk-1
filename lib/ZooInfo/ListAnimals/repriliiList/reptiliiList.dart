
import 'package:zoonsk/ZooInfo/ListAnimals/repriliiList/spisokReptilii.dart';

import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class repriliiList extends StatefulWidget {
  const repriliiList({super.key});
  @override
  State<repriliiList> createState() => _repriliiList();
}

class _repriliiList extends State<repriliiList> {

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const Image(image: appimages.arrowcircleleft),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Рептилии',
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'museo700',
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 9,
                itemBuilder: ((context, index) {
                  return const spisokReprilii();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
