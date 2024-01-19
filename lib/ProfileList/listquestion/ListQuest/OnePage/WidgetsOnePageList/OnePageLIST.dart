import 'package:zoonsk/ProfileList/listquestion/ListQuest/OnePage/WidgetsOnePageList/ListAnimals.dart';
import 'package:zoonsk/image/image.dart';

import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

@override
class QuestList extends StatefulWidget {
  const QuestList({super.key});
  @override
  State<QuestList> createState() => _QuestList();
}

class _QuestList extends State<QuestList> {
  int selectIndex = 0;

  void oneSelectTab(int index) {
    if (selectIndex == index) return;
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
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
                    'Задания',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'museo700',
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Stack(
                children: [
                  Container(
                    width: 380,
                    height: 138,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 245, 245, 245),
                    ),
                  ),
                  const Positioned(
                      left: 139,
                      top: 60,
                      child: Column(
                        children: [
                          Text(
                            'Победы:',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'museo300',
                                color: Color.fromARGB(255, 72, 72, 72)),
                          ),
                        ],
                      )),
                  const Positioned(
                      left: 229,
                      top: 60,
                      child: Column(
                        children: [
                          Text(
                            'Проигрыши:',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'museo300',
                                color: Color.fromARGB(255, 72, 72, 72)),
                          ),
                        ],
                      )),
                  const Positioned(
                      left: 139,
                      top: 20,
                      child: Column(
                        children: [
                          Text(
                            'Общая статистика:',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'museo700',
                                color: Color.fromARGB(255, 72, 72, 72)),
                          ),
                        ],
                      )),
                  Positioned(
                      left: 139,
                      top: 85,
                      child: ElevatedButton.icon(
                        style: const ButtonStyle(
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.green),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 245, 245, 245)),
                            elevation: MaterialStatePropertyAll(0),
                            minimumSize:
                                MaterialStatePropertyAll(Size(203, 43)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22)),
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/qr');
                        },
                        label: const Text(
                          'Сканировать точку',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'museo300'),
                        ),
                        icon: const Icon(Icons.ac_unit),
                      )),
                  Positioned(
                    left: 15,
                    top: 20,
                    child: SimpleCircularProgressBar(
                      startAngle: -180,
                      progressColors: const [
                        Colors.orange,
                        Colors.green,
                      ],
                      mergeMode: true,
                      animationDuration: 120,
                      onGetText: (double value) {
                        return Text(
                          '${value.toInt()}',
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 23),
              const Row(children: [
                Text(
                  'Задания на сегодня',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'museo300',
                      color: Color.fromARGB(255, 72, 72, 72)),
                )
              ]),
              const SizedBox(
                height: 9,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const Animals();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
