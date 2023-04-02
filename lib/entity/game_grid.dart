import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:microtetris_flutter/entity/device_context.dart';
import 'package:microtetris_flutter/entity/entity.dart';

/// Entité representant la grille de jeu
class GameGrid extends Entity {
  double gap;
  int size;

  GameGrid({
    required this.gap,
    required this.size,
  });

  @override
  void draw(DeviceContext ctx) {
    // dessiner les lignes horizontales

    double centerX = (ctx.size.width - size * gap) / 2;
    double centerY = (ctx.size.height - size * gap) / 2;
    for (int k = 0; k < 1 + size; ++k) {
      ctx.canvas.drawLine(
          Offset(centerX, centerY + k * gap),
          Offset(centerX + size * gap, centerY + k * gap),
          Paint()
            ..strokeWidth = 3
            ..style = PaintingStyle.stroke
            ..color = Colors.black);
    }

    // dessiner les lignes verticales
    for (int k = 0; k < 1 + size; ++k) {
      ctx.canvas.drawLine(
          Offset(centerX + k * gap, centerY),
          Offset(centerX + k * gap, centerY + size * gap),
          Paint()
            ..strokeWidth = 3
            ..style = PaintingStyle.stroke
            ..color = Colors.black);
    }
  }
}
