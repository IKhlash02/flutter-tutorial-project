import 'package:flutter/material.dart';
import 'package:learning_erico/app_bar_gradasi.dart';
import 'package:learning_erico/card_widget.dart';
import 'package:learning_erico/basic/dragable.dart';
import 'package:learning_erico/basic/animed_gesture.dart';
import 'package:learning_erico/basic/drop_down_56.dart';
import 'package:learning_erico/basic/flexible_widget.dart';
import 'package:learning_erico/basic/google_font_73.dart';
import 'package:learning_erico/hero_animation_25/hero_animation.dart';
import 'package:learning_erico/optional/htpp_request/bottom_request.dart';
import 'package:learning_erico/basic/image_widget.dart';
import 'package:learning_erico/basic/media_query.dart';
import 'package:learning_erico/basic/navigasi_multiple/navigasi_login.dart';
import 'package:learning_erico/opacity_card.dart';
import 'package:learning_erico/play_sound.dart';
import 'package:learning_erico/basic/potioned_float_24.dart';
import 'package:learning_erico/qr/qr.dart';

import 'package:learning_erico/basic/spacer_widget.dart';
import 'package:learning_erico/basic/stack_align.dart';
import 'package:learning_erico/basic/tab_bar_27.dart';
import 'package:learning_erico/basic/text_field.dart';
import 'basic/tex_style.dart';
import 'basic/list_list_view.dart';
import 'optional/shared_preference.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/564x/fc/d9/10/fcd9104e6542c740ca5a04cbe404250e.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(" 'List Pembelajaran'"),
          backgroundColor: const Color(0xff2d88ba),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Basic Flutter",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                ButtonList(
                  buttonTexts: const [
                    '8. Text Style',
                    '9. list dan Listview',
                    '10. AnimedContainer & GestureDetector',
                    '11. Flexible Widget',
                    '12. Stack dan Align',
                    '13. Image WIdget',
                    '14. Spacer Widget',
                    '15. Draggable, DragTarget, SizedBox, Material',
                    '16. Navigasi Multi Page/Screen',
                    '17. App Bar Gradasi',
                    '18. Card Widget',
                    '19. TextField Widget',
                    '21. Media Query',
                    '23. Opacity (Custom Card dengan Latar Bercorak)',
                    '24. Positioned, FloatingActionButton, LoginPage',
                    '25. Hero & ClipRRect Widget',
                    '27. TabBar',
                    "29. QR Code",
                    "32. Memainkan Musik / Sound",
                    '56. Drop Down Button',
                    '73. Google Fonts',
                  ],
                  routes: [
                    const TextStyle1(),
                    const ListListview09(),
                    const AnimedGesture10(),
                    const FlexibleWidget11(),
                    const StackAlign12(),
                    const ImageWidget13(),
                    const SpacerWidget14(),
                    const Draggable15(),
                    const NavigasiLogin16(),
                    const AppBarGradasi17(),
                    const CardWidget18(),
                    const TextField19(),
                    const MediaQuery21(),
                    const OpacityCard23(),
                    const PositionedFloating24(),
                    const HeroAnimationMain25(),
                    TabBar27(),
                    const QRHome00(),
                    const PlaySong32(),
                    const DrapDown56(),
                    const GoogleFont73(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Optional",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                const ButtonList(
                  buttonTexts: [
                    '36. HTTP Request / Koneksi ke API ',
                    '41. Shared Preferences & Double Question Mark Operator (??)'
                  ],
                  routes: [
                    BottomRequst(),
                    SharePreference41(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonList extends StatelessWidget {
  final List<String> buttonTexts;
  final List<Widget> routes;

  const ButtonList(
      {super.key, required this.buttonTexts, required this.routes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: buttonTexts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff2d88ba),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => routes[index]),
              );
            },
            child: Text(
              buttonTexts[index],
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
