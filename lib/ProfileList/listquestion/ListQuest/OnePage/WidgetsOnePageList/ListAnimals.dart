import 'package:zoonsk/ProfileList/listquestion/ListQuest/TwoPage/Quest.dart';
import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  const Animals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Stack(
        children: [
          Container(
              height: 62,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 245, 245, 245),
              )),
          ListTile(
            title: const Text(
              'Название животного',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'museo700',
                  color: Color.fromARGB(255, 52, 32, 31)),
            ),
            subtitle: const Text(
              'Место нахождения',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'museo300',
                  color: Color.fromARGB(255, 52, 32, 31)),
            ),
            leading: const Icon(
              Icons.check_box_outline_blank_outlined,
              size: 35,
            ),
            trailing: const Icon(
              Icons.location_on,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Quest()));
            },
          ),
          const Positioned(top: 22, left: 274, child: Text('10')),
        ],
      ),
    );
  }
}
