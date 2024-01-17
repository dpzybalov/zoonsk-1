import 'package:zoonsk/ZooInfo/ListAnimals/mlekoplist/schedule.dart';
import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class ListAnimals extends StatefulWidget {
  const ListAnimals({super.key});
  @override
  State<ListAnimals> createState() => _AnimalList();
}

class _AnimalList extends State<ListAnimals> {

   
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
                    child: Image(image: appimages.arrowcircleleft),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Млекопитающие',
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
                  return const mammals();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
