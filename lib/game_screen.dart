import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:microtetris_flutter/game_board.dart';
import 'package:microtetris_flutter/hud_panel.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF97AC8C),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HudPanel(),
                const Expanded(
                  child: GameBoard(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildStartButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container buildStartButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(60)),
      child: const Text(
        "Start !",
        style: TextStyle(
          color: const Color(0xFF97AC8C),
          fontFamily: "llpixel3",
          fontSize: 25,
        ),
      ),
    );
  }
}
