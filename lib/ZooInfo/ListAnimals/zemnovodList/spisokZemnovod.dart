import 'package:zoonsk/ZooInfo/ListAnimals/zemnovodList/listInforzemn/listinforzemn.dart';
import 'package:zoonsk/image/image.dart';
// import 'package:zoonsk/ZooInfo/listInfor/listinfor.dart';

import 'package:flutter/material.dart';

class spisokZemnovod extends StatelessWidget {
  const spisokZemnovod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const listinforZemnovod()));
            },
            child: Container(
              height: 91,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 245, 245, 245),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 3, 0, 3),
                    child: SizedBox(
                        height: 85,
                        width: 92,
                        child: Image(image: appimages.zemn)),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  SizedBox(
                    width: 165,
                    height: 91,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 165,
                          height: 69,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Юго-восточный  ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 52, 32, 31))),
                              Text('Место нахождение ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 52, 32, 31))),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 165,
                          height: 22,
                          child: Text('Расстояние',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'museo300',
                                  color: Color.fromARGB(255, 52, 32, 31))),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image(image: appimages.arrow)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
