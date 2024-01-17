import 'package:zoonsk/ProfileList/listquestion/personalinfo/Myticket/myticketlist.dart';

import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class myticket extends StatefulWidget {
  const myticket({super.key});
  @override
  State<myticket> createState() => _myticket();
}

class _myticket extends State<myticket> {
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
                    child: Image(image: appimages.arrowcircleleft),
                  ),
                  Text(
                    'Мои билеты',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'museo700',
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const myticketlist();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
