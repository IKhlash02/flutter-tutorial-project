import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlaySong32 extends StatefulWidget {
  const PlaySong32({super.key});

  @override
  State<PlaySong32> createState() => _PlaySong32State();
}

class _PlaySong32State extends State<PlaySong32> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  @override
  void dispose() {
    audioPlayer.pause();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 113, 37, 20),
          Color.fromARGB(255, 44, 7, 7)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.13),
            child: Column(
              children: const [
                Text(
                  "MEMAINKAN DARI ARTIS",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "Keshi",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_arrow_down),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.1,
                  MediaQuery.of(context).size.width * 0.05,
                  MediaQuery.of(context).size.width * 0.1,
                  30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Card(
                  elevation: 4,
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://akcdn.detik.net.id/visual/2022/07/12/musisi-keshi-1_169.jpeg?w=350&q=90%20}}"),
                              fit: BoxFit.cover))),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.height * 0.29),
              child: const Text(
                'LIMBO',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.height * 0.32),
              child: const Text(
                'keshi',
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: SliderTheme(
                data: const SliderThemeData(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                  trackHeight: 3,
                ),
                child: Slider(
                    inactiveColor: Colors.grey,
                    activeColor: Colors.white,
                    thumbColor: Colors.white,
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {}),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formatTime(position),
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  Text(
                    formatTime(duration - position),
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.fast_rewind),
                  iconSize: 45,
                  color: Colors.white,
                  onPressed: () async {
                    await audioPlayer
                        .seek(Duration(seconds: position.inSeconds - 10));
                    await audioPlayer.play(AssetSource("keishi.mp3"));
                  },
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: IconButton(
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    iconSize: 45,
                    color: Colors.black,
                    onPressed: () async {
                      if (isPlaying) {
                        await audioPlayer.pause();
                      } else {
                        await audioPlayer.play(AssetSource("keishi.mp3"));
                      }
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.fast_forward),
                  iconSize: 45,
                  color: Colors.white,
                  onPressed: () async {
                    await audioPlayer
                        .seek(Duration(seconds: position.inSeconds + 10));
                    await audioPlayer.play(AssetSource("keishi.mp3"));
                  },
                ),
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // IconButton(
            //     //     onPressed: () {
            //     //       playSound("images/keishi.mp3");
            //     //     },
            //     //     icon: const Icon(
            //     //       Icons.play_circle,
            //     //       size: 60,
            //     //       color: Colors.white,
            //     //     )),

            //     ClipRect(
            //       child: ElevatedButton(
            //           onPressed: () {
            //             playSound("keishi.mp3");
            //           },
            //           child: Container(
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(50)),
            //           )),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
