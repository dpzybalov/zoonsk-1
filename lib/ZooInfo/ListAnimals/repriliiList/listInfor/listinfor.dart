import 'package:zoonsk/image/image.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

@override
class listinfor extends StatefulWidget {
  const listinfor({super.key});
  @override
  State<listinfor> createState() => _listinfor();
}

final player = AudioPlayer();
bool isPlaying = false;
Duration duration = const Duration();
Duration position = const Duration();

String formatTime(int seconds) {
  return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
}

class _listinfor extends State<listinfor> {
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
                            child:
                                const Image(image: appimages.arrowcircleleft),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Text(
                            'НАЗВАНИЕ',
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
                              const Text(
                                'Параметр 1',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'museo700',
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              const Text(
                                'Значение 1',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'museo700',
                                    color: Color.fromARGB(255, 219, 128, 10)),
                              ),
                              const SizedBox(
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
                                const Text(
                                  'Параметр 2',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                const Text(
                                  'Значение 2',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                                const SizedBox(
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
                                const Text(
                                  'Параметр 3',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                const Text(
                                  'Значение 3',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                                const SizedBox(
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
                      const Row(
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
                              padding: const EdgeInsets.fromLTRB(15, 51, 15, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 13,
                                        ),
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(left: 2),
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
                                                    const RoundSliderThumbShape(
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
                                      SizedBox(
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
                                                  'sound/sound3.mp3'));
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 7, 52, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          formatTime(position.inSeconds),
                                          style: const TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontFamily: 'museo500',
                                          ),
                                        ),
                                        Text(
                                          formatTime(
                                              (duration - position).inSeconds),
                                          style: const TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontFamily: 'museo500',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
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
                                        child:
                                            const Center(child: Text('Отряд')),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 41,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: const Center(
                                            child: Text('Семейство')),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                      'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.'),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                        child: const Column(
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
                                        child:
                                            const Image(image: appimages.afr),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'museo300',
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Column(
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
                  left: MediaQuery.of(context).size.width / 5.5,
                  top: MediaQuery.of(context).size.height / 12,
                  child: const Image(
                    image: appimages.Layer,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 12,
                  top: MediaQuery.of(context).size.height / 2.1,
                  child: Container(
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Container(
                                width: 64,
                                height: 64,
                                child: const Image(image: appimages.audio))),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 64,
                            width: 64,
                            child: const Image(
                              image: appimages.AR,
                            ),
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
