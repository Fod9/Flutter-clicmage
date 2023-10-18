import 'package:flutter/material.dart';

class TextComponent extends StatefulWidget {
  final String text;
  const TextComponent({super.key, required this.text});

  @override
  State<TextComponent> createState() => _TextComponentState();
}

class _TextComponentState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: const TextStyle(
        fontSize: 60,
        color: Color(0xFF262626),
      ),);
  }
}
