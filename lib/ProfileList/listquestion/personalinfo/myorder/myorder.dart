import 'package:zoonsk/ProfileList/listquestion/personalinfo/myorder/myorderlist.dart';
import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class myorder extends StatefulWidget {
  const myorder({super.key});
  @override
  State<myorder> createState() => _myorder();
}

class _myorder extends State<myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Image(image: appimages.arrowcircleleft),
                  ),
                  const Text(
                    'Мои заказы',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'museo700',
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const myorderlist();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
