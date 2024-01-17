import 'package:flutter/material.dart';

class myorderlist extends StatelessWidget {
  const myorderlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 245, 245, 245),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Блин со сгущенкой ',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'museo300',
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 21, top: 21),
                          child: Text(
                            '1 x 600 р ',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: const Color.fromARGB(255, 220, 121, 1)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26),
                  child: Text(
                    '120г - 262ккал',
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'museo300',
                        color: const Color.fromARGB(255, 151, 147, 147)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Итого:',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'museo300',
                          color: const Color.fromARGB(255, 151, 147, 147)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 11, right: 21, top: 13, bottom: 16),
                      child: Text(
                        '1 x 600 р ',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'museo700',
                            color: const Color.fromARGB(255, 220, 121, 1)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
