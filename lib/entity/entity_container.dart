import 'package:flutter/material.dart';
import 'package:microtetris_flutter/entity/device_context.dart';
import 'package:microtetris_flutter/entity/entity.dart';

/// Gère le dessin et les interactions des entités
class EntityContainer extends CustomPainter {
  /// La liste des entités
  final List<Entity> entities;

  EntityContainer(this.entities);
  @override
  void paint(Canvas canvas, Size size) {
    // on dessine toutes les entités
    for (var ent in entities) {
      ent.draw(DeviceContext(canvas, size));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
