import 'package:zoonsk/ZooInfo/ListAnimals/bespozList/spisokbespoz.dart';

import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class bespozList extends StatefulWidget {
  const bespozList({super.key});
  @override
  State<bespozList> createState() => _bespozList();
}

class _bespozList extends State<bespozList> {

   
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
                    'Беспозвоночные',
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
                  return const spisokbespoz();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
