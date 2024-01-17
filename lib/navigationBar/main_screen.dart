import 'package:zoonsk/ProfileList/profilelist.dart';
import 'package:zoonsk/ZooInfo/ListZooInfo/ZooInfolist.dart';
import 'package:zoonsk/homelist/homelist.dart';

import 'package:zoonsk/navigationBar/nav_model.dart';

import 'nav_bar.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final animalslist = GlobalKey<NavigatorState>();
  final maplist = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;

  List<NavModel> _wigetList = [];

  @override
  void initState() {
    super.initState();
    _wigetList = [
      NavModel(
        page: const homelist(),
        navKey: homeNavKey,
      ),
      NavModel(
        page: const ZooinfoList(),
        navKey: animalslist,
      ),
      NavModel(
        page: const profile(),
        navKey: maplist,
      ),
      NavModel(
        page: const profile(),
        navKey: profileNavKey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: selectedTab,
          children: _wigetList
              .map((Page) => Navigator(
                    key: Page.navKey,
                    onGenerateInitialRoutes: (navigator, InitialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => Page.page)
                      ];
                    },
                  ))
              .toList()),
      bottomNavigationBar: NavBar(
        pageIndex: selectedTab,
        onTap: (index) {
          if (index == selectedTab) {
            _wigetList[index]
                .navKey
                .currentState
                ?.popUntil((route) => route.isFirst);
          } else {
            setState(() {
              selectedTab = index;
            });
          }
        },
      ),
    );
  }
}
