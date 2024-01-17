import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class foodlist extends StatefulWidget {
  const foodlist({super.key});
  @override
  State<foodlist> createState() => _foodlist();
}

class _foodlist extends State<foodlist> {
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
                        'Заказать еду',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'museo700',
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 13),
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 197, 198, 204),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Найти заведение',
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 116,
                          width: MediaQuery.of(context).size.width / 3.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 242, 242, 242),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 34,
                                  width: 34,
                                  child: Image(image: appimages.coffe)),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                child: Text(
                                  'Чашка \nкофе',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 1, 98, 63)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 116,
                          width: MediaQuery.of(context).size.width / 3.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 242, 242, 242),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 34,
                                  width: 34,
                                  child: Image(image: appimages.coffe)),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                child: Text(
                                  'Чашка \nкофе',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 1, 98, 63)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 116,
                          width: MediaQuery.of(context).size.width / 3.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 242, 242, 242),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 34,
                                  width: 34,
                                  child: Image(image: appimages.coffe)),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                child: Text(
                                  'Чашка \nкофе',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 1, 98, 63)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 116,
                          width: MediaQuery.of(context).size.width / 3.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 242, 242, 242),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 34,
                                  width: 34,
                                  child: Image(image: appimages.coffe)),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                child: Text(
                                  'Чашка \nкофе',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 1, 98, 63)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 116,
                          width: MediaQuery.of(context).size.width / 3.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 242, 242, 242),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 34,
                                  width: 34,
                                  child: Image(image: appimages.coffe)),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                child: Text(
                                  'Чашка \nкофе',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 1, 98, 63)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 116,
                          width: MediaQuery.of(context).size.width / 3.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 1, 98, 63),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 34,
                                  width: 34,
                                  child:
                                      Image(image: appimages.arrowrightfood)),
                              SizedBox(
                                height: 9,
                              ),
                              Container(
                                width: 70,
                                child: Text(
                                  'Смотреть  все',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo300',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
