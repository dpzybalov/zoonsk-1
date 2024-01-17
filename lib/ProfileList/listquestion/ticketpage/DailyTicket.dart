import 'dart:math';

import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class daylyTicket extends StatefulWidget {
  const daylyTicket({super.key});
  @override
  State<daylyTicket> createState() => _daylyTicket();
}

class _daylyTicket extends State<daylyTicket> {
  int _quantity = 0;
  int _quantity2 = 0;
  DateTime today = DateTime.now();

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 88,
              width: MediaQuery.of(context).size.width / 2.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: const Color.fromARGB(255, 245, 245, 245),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 14),
                          child: Text(
                            'Взрослый билет',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'museo300',
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 10),
                          child: Text(
                            '600 р ',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: const Color.fromARGB(255, 220, 121, 1)),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, left: 14),
                      child: Text(
                        '+12 лет',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'museo300',
                            color: const Color.fromARGB(255, 192, 192, 192)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 2),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _quantity++;
                              });
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                child: Image(image: appimages.searchzoomin)),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '$_quantity',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: const Color.fromARGB(255, 1, 98, 63)),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _quantity = max(_quantity, 1);
                                _quantity--;
                              });
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                child: Image(image: appimages.searchzoomout)),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            Container(
              height: 88,
              width: MediaQuery.of(context).size.width / 2.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: const Color.fromARGB(255, 245, 245, 245),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 14),
                          child: Text(
                            'Детский билет',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'museo300',
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 10),
                          child: Text(
                            '600 р ',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: const Color.fromARGB(255, 220, 121, 1)),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, left: 14),
                      child: Text(
                        '+5 - 12 лет',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'museo300',
                            color: const Color.fromARGB(255, 192, 192, 192)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 2),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _quantity2++;
                              });
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                child: Image(image: appimages.searchzoomin)),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '$_quantity2',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: const Color.fromARGB(255, 1, 98, 63)),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _quantity2 = max(_quantity2, 1);
                                _quantity2--;
                              });
                            },
                            child: Container(
                                height: 24,
                                width: 24,
                                child: Image(image: appimages.searchzoomout)),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          color: const Color.fromARGB(255, 255, 179, 87),
          height: 355,
          child: TableCalendar(
            rowHeight: 40,
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 78,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 245, 245, 245),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 19),
                child: Text(
                  'Ваш заказ:',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'museo300',
                      color: const Color.fromARGB(255, 72, 72, 72)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Детский билет x 1' '      Взрослый билет x 1',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'museo300',
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 19),
                      child: Text(
                        '600 р ',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'museo700',
                            color: const Color.fromARGB(255, 220, 121, 1)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
