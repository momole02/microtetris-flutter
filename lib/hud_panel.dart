import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HudPanel extends StatefulWidget {
  const HudPanel({super.key});

  @override
  State<HudPanel> createState() => _HudPanelState();
}

class _HudPanelState extends State<HudPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(0.7, 0.7),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              color: Colors.black.withAlpha(0x44)),
        ],
        color: const Color(0xFF97AC8C),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Score : 123456",
            style: TextStyle(fontFamily: "calculator", fontSize: 30),
          ),
          Text(
            "MicroTetris",
            style: TextStyle(fontFamily: "llpixel3", fontSize: 20),
          ),
        ],
      ),
    );
  }
}
