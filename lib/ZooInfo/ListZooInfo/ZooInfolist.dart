import 'package:zoonsk/ZooInfo/ListAnimals/bespozList/bespozList.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/birdaList/BirdsList.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/fishList/fishList.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/mlekoplist/ListAnimals.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/repriliiList/reptiliiList.dart';
import 'package:zoonsk/ZooInfo/ListAnimals/zemnovodList/zemnovodList.dart';
import 'package:zoonsk/image/image.dart';
import 'package:flutter/material.dart';
import 'package:zoonsk/repoaitories/animals/animals_repositories.dart';
import 'package:zoonsk/repoaitories/modelanimals/animals_model.dart';

List<Animalsname>? animalsnameList;

@override
class ZooinfoList extends StatefulWidget {
  ZooinfoList({super.key});
  @override
  State<ZooinfoList> createState() => _Quest();
}

class _Quest extends State<ZooinfoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ЖИВОТНЫЕ',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Museo700',
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 167,
                  child: InkWell(
                    onTap: () async {
                      animalsnameList = await apiClient().getAnimals();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ListAnimals()));
                      setState(() {});
                    },
                    child: const Image(
                      image: appimages.ml,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 167,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BirdsList()));
                    },
                    child: const Image(image: appimages.birds),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 167,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const bespozList()));
                    },
                    child: const Image(image: appimages.Invert),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 167,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const repriliiList()));
                    },
                    child: const Image(image: appimages.Reptiles),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 167,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const zemnovodList()));
                    },
                    child: const Image(image: appimages.Amphibians),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.15,
                  height: 167,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const fishList()));
                    },
                    child: const Image(image: appimages.fish),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
