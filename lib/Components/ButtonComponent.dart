import 'package:flutter/material.dart';


class ButtonComponent extends StatefulWidget {
  const ButtonComponent({super.key, required this.onPressed, required this
      .number, required this.selected});

  final Function(String) onPressed;
  final String selected;

  final String number;

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {


  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ()=> widget.onPressed(widget.number),
        style: TextButton.styleFrom(
          backgroundColor: widget.number != widget.selected ?  const Color
            (0xFF262626) :  Colors.blue ,
          padding: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom:
          30),
        ),
        child: Text(
          widget.number,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
    );
  }
}
