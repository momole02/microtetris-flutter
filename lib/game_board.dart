import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:microtetris_flutter/entity/entity.dart';
import 'package:microtetris_flutter/entity/entity_container.dart';
import 'package:microtetris_flutter/entity/game_grid.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomPaint(
      painter: EntityContainer([
        GameGrid(gap: 32, size: 5),
      ]),
      child: SizedBox(
        width: width,
      ),
    );
  }
}
