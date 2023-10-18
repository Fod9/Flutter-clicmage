import 'package:flutter/material.dart';
import './ButtonComponent.dart';

class ClavierComponent extends StatefulWidget {
  const ClavierComponent({super.key, required this.onPressed, required this
      .selected});

  final Function(String) onPressed;
  final String selected;

  @override
  State<ClavierComponent> createState() => _ClavierComponentState();
}

class _ClavierComponentState extends State<ClavierComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonComponent(number: '1', onPressed: widget.onPressed,
                  selected: widget.selected),
              ButtonComponent(number: '2', onPressed: widget.onPressed, selected: widget.selected),
              ButtonComponent(number: '3', onPressed: widget.onPressed, selected: widget.selected),
            ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonComponent(number: '4', onPressed: widget.onPressed, selected: widget.selected),
              ButtonComponent(number: '5', onPressed: widget.onPressed, selected: widget.selected),
              ButtonComponent(number: '6', onPressed: widget.onPressed, selected: widget.selected),
            ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonComponent(number: '7', onPressed: widget.onPressed, selected: widget.selected),
              ButtonComponent(number: '8', onPressed: widget.onPressed, selected: widget.selected),
              ButtonComponent(number: '9', onPressed: widget.onPressed, selected: widget.selected),
            ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonComponent(number: '0', onPressed: widget.onPressed, selected: widget.selected),
            ]),
        )
      ],
    );
  }
}
