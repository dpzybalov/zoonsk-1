import 'package:zoonsk/ZooInfo/ListAnimals/mlekoplist/ListAnimals.dart';
import 'package:zoonsk/ZooInfo/ListZooInfo/ZooInfolist.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/mlekoplist/listInfor/listinfor.dart';
import 'package:zoonsk/navigationBar/main_screen.dart';

final route = {
  '/': (context) => const MainScreen(),
  '/Zooinfolist': (context) => const ZooinfoList(),
  '/ListAnimals': (context) => const ListAnimals(),
  '/listinfor': (context) => const listinfor(),
};
