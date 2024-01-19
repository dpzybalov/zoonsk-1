import 'package:zoonsk/ProfileList/listquestion/personalinfo/Myticket/myticketlist.dart';
import 'package:zoonsk/ProfileList/listquestion/ticketpage/DailyTicket.dart';
import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';

@override
class ticketlist extends StatefulWidget {
  const ticketlist({super.key});
  @override
  State<ticketlist> createState() => _ticketlist();
}

class _ticketlist extends State<ticketlist>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                    'Билеты',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'museo700',
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              DefaultTabController(
                length: 3,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 7, right: 7),
                    tabAlignment: TabAlignment.fill,
                    indicatorPadding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    dividerColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 98, 63),
                        borderRadius: BorderRadius.circular(20)),
                    labelColor: Colors.white,
                    labelStyle: const TextStyle(fontSize: 12, fontFamily: 'museo300'),
                    unselectedLabelStyle:
                        const TextStyle(fontSize: 12, fontFamily: 'museo300'),
                    controller: _tabController,
                    unselectedLabelColor: const Color.fromARGB(255, 72, 72, 72),
                    tabs: const [
                      Tab(
                        text: 'Билеты на день',
                      ),
                      Tab(
                        text: 'Абонименты ',
                      ),
                      Tab(
                        text: 'Мои билеты',
                      ),
                    ]),
              ),
              Expanded(
                  child: TabBarView(controller: _tabController, children: [
                const daylyTicket(),
                const Text('home2'),
                ListView.builder(
                  itemCount: 15,
                  itemBuilder: ((context, index) {
                    return const myticketlist();
                  }),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
