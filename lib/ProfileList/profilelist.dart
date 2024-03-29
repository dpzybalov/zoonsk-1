import 'package:zoonsk/ProfileList/listquestion/food/food.dart';
import 'package:zoonsk/ProfileList/listquestion/personalinfo/Personaldata.dart';
import 'package:zoonsk/ProfileList/listquestion/questionlist.dart';
import 'package:zoonsk/ProfileList/listquestion/ticketpage/ticketlist.dart';
import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';
import 'package:zoonsk/ProfileList/listquestion/ListQuest/OnePage/WidgetsOnePageList/OnePageLIST.dart';

@override
class profile extends StatefulWidget {
  const profile({super.key});
  @override
  State<profile> createState() => _profile();
}

class _profile extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 32, 10, 0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const foodlist()));
                },
                child: Container(
                  height: 97,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 1, 98, 63)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(19, 0, 0, 16),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          'Заказать еду',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'museo700',
                              color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: SizedBox(
                          height: 60,
                          width: 55,
                          child: Image(
                            image: appimages.zoofood3,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const QuestList()));
                },
                child: Container(
                  height: 97,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(19, 0, 0, 16),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          'Прогресс изучения',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'museo700',
                              color: Color.fromARGB(255, 52, 32, 31)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: SizedBox(
                          height: 60,
                          width: 55,
                          child: Image(
                            image: appimages.iconlistcheck,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ticketlist()));
                },
                child: Container(
                  height: 97,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(19, 0, 0, 16),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          'Купить билет',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'museo700',
                              color: Color.fromARGB(255, 52, 32, 31)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: SizedBox(
                          height: 60,
                          width: 55,
                          child: Image(
                            image: appimages.iconfontticket,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Personaldata()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.16,
                      height: 176,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 240, 240, 240)),
                      child: const Column(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(115, 16, 16, 0),
                          child: SizedBox(
                            height: 42,
                            width: 42,
                            child: Image(image: appimages.iconfontuser),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(13, 77, 0, 0),
                          child: Text(
                            'Личный кабинет',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: Color.fromARGB(255, 52, 32, 31)),
                          ),
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const questionlist()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.16,
                      height: 176,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 240, 240, 240)),
                      child: const Column(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(115, 16, 16, 0),
                          child: SizedBox(
                            height: 42,
                            width: 42,
                            child: Image(image: appimages.comments),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(13, 77, 0, 0),
                          child: Text(
                            'Задать вопрос',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'museo700',
                                color: Color.fromARGB(255, 52, 32, 31)),
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
