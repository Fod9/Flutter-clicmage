import 'package:flutter/material.dart';
import '../Components/ClavierComponent.dart';
import '../Components/TextComponent.dart';
import '../Components/ImageComponent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String text = '1';
  bool isImage = false;

  void changeText(String number) {
    setState(() {
      text = number;
    });
  }

  void switchMode() {
    setState(() {
      isImage = !isImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isImage == false ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextComponent(text: text),
          ClavierComponent(onPressed: changeText, selected: text),
        ],
      ) : ImageComponent(index: int.parse(text)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isImage = !isImage;
          });
        },
        child: const Icon(Icons.image),
      ),
    );
  }
}
