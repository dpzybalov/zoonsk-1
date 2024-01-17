import 'package:flutter/material.dart';

class myticketlist extends StatelessWidget {
  const myticketlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Stack(
        children: [
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
                        'Детский билет x 1 ' '     Взрослый билет x 1 ',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'museo300',
                            color: Colors.black),
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
      ),
    );
  }
}
