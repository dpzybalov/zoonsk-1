import 'package:zoonsk/image/image.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

@override
class listinforBirds extends StatefulWidget {
  const listinforBirds({super.key});
  @override
  State<listinforBirds> createState() => _listinforBirds();
}

final player = AudioPlayer();
bool isPlaying = false;
Duration duration = new Duration();
Duration position = new Duration();

String formatTime(int seconds) {
  return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
}

class _listinforBirds extends State<listinforBirds> {
  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
      if (duration.inSeconds.toDouble() == position.inSeconds.toDouble()) {
        player.stop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Image(image: appimages.arrowcircleleft),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Text(
                            'Птицы',
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'museo700',
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Класс',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'museo300',
                                color: Color.fromARGB(255, 1, 98, 63)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Информация',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'museo700',
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Параметр 1',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'museo700',
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text(
                                'Значение 1',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'museo700',
                                    color: Color.fromARGB(255, 219, 128, 10)),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                color: Colors.black12,
                                height: 1,
                                width: 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Параметр 2',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'Значение 2',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1,
                                  width: 100,
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Параметр 3',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'Значение 3',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1,
                                  width: 100,
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Параметр 4',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'Значение 4',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 179, 87, 1)),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 51, 15, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 13,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.only(left: 2),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.28,
                                          height: 11,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white),
                                          child: SizedBox(
                                            height: 7,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            child: SliderTheme(
                                              data: SliderThemeData(
                                                overlayShape:
                                                    SliderComponentShape
                                                        .noOverlay,
                                                activeTrackColor:
                                                    const Color.fromARGB(
                                                        255, 0, 117, 72),
                                                inactiveTrackColor:
                                                    const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                trackHeight: 7,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius: 0),
                                              ),
                                              child: Slider(
                                                min: 0,
                                                max: duration.inSeconds
                                                    .toDouble(),
                                                value: position.inSeconds
                                                    .toDouble(),
                                                onChanged: (value) {
                                                  final position = Duration(
                                                      seconds: value.toInt());
                                                  player.seek(position);
                                                  player.resume();
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 27,
                                        width: 27,
                                        child: IconButton(
                                          icon: Icon(
                                            isPlaying
                                                ? Icons.pause
                                                : Icons.play_arrow,
                                          ),
                                          onPressed: () {
                                            if (isPlaying) {
                                              player.pause();
                                            } else {
                                              player.play(AssetSource(
                                                  'sound/sound2.mp3'));
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 7, 52, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          formatTime(position.inSeconds),
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontFamily: 'museo500',
                                          ),
                                        ),
                                        Text(
                                          formatTime(
                                              (duration - position).inSeconds),
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontFamily: 'museo500',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 41,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(child: Text('Отряд')),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 41,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(child: Text('Семейство')),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                      'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.'),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Среда обитания'
                                              '\n',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'museo700',
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                            Text(
                                              'Жирафы хорошо приспособлены к жизни на открытых, усеянных деревьями африканских равнинах.',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'museo300',
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Image(image: appimages.afr),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'museo300',
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Жизнь в нашем зоопарке',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'museo700',
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      Text(
                                        'Описание животных в зоопарке',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'museo300',
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 4,
                  top: MediaQuery.of(context).size.height / 7,
                  child: Container(
                      height: 350,
                      width: 260,
                      child: Image(image: appimages.redibis)),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 12,
                  top: MediaQuery.of(context).size.height / 2.1,
                  child: Container(
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {}, child: Image(image: appimages.audio)),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image(
                            image: appimages.AR,
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
    );
  }
}
