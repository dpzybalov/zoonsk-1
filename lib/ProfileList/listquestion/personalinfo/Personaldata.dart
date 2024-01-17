import 'package:zoonsk/ProfileList/listquestion/personalinfo/Myticket/myticket.dart';
import 'package:zoonsk/ProfileList/listquestion/personalinfo/myorder/myorder.dart';

import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class Personaldata extends StatefulWidget {
  const Personaldata({super.key});
  @override
  State<Personaldata> createState() => _Personaldata();
}

class _Personaldata extends State<Personaldata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(9, 12, 9, 0),
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
                        'Личные данные',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'museo700',
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 53,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            'Имя',
                            style: TextStyle(
                              fontFamily: 'museo700',
                              fontSize: 12,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 13),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 197, 198, 204),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Ваше имя',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            'Номер телефона',
                            style: TextStyle(
                              fontFamily: 'museo700',
                              fontSize: 12,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 13),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 197, 198, 204),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Введите номер телефона',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            'Эл.почта',
                            style: TextStyle(
                              fontFamily: 'museo700',
                              fontSize: 12,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 13),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 197, 198, 204),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Введите вашу почту',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => myorder()));
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width / 2.15,
                            height: 97,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromARGB(255, 240, 240, 240)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(19, 0, 14, 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Мои заказы',
                                    style: TextStyle(
                                        fontFamily: 'museo700',
                                        fontSize: 16,
                                        color: const Color.fromARGB(
                                            255, 52, 32, 31)),
                                  ),
                                  Container(
                                      height: 24,
                                      width: 24,
                                      child: Image(image: appimages.arrowright))
                                ],
                              ),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => myticket()));
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width / 2.15,
                            height: 97,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromARGB(255, 240, 240, 240)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(19, 0, 14, 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Мои билеты',
                                    style: TextStyle(
                                        fontFamily: 'museo700',
                                        fontSize: 16,
                                        color: const Color.fromARGB(
                                            255, 52, 32, 31)),
                                  ),
                                  Container(
                                      height: 24,
                                      width: 24,
                                      child: Image(image: appimages.arrowright))
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Center(
                      child: Container(
                          alignment: Alignment.center,
                          height: 49,
                          width: 326,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 1, 98, 63)),
                          child: Text(
                            'Сохранить',
                            style: TextStyle(
                                fontFamily: 'museo700',
                                fontSize: 16,
                                color: Colors.white),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
