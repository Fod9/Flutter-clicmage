import 'package:flutter/material.dart';

class ImageComponent extends StatefulWidget {

  final int index;

  const ImageComponent({super.key, required this.index});

  @override
  State<ImageComponent> createState() => _ImageComponentState();
}

class _ImageComponentState extends State<ImageComponent> {

  List<String> images = [
    "https://picsum.photos/300/300?random=1",
    'https://picsum.photos/300/300?random=2',
    'https://picsum.photos/300/300?random=3',
    'https://picsum.photos/300/300?random=4',
    'https://picsum.photos/300/300?random=5',
    'https://picsum.photos/300/300?random=6',
    'https://picsum.photos/300/300?random=7',
    'https://picsum.photos/300/300?random=8',
    'https://picsum.photos/300/300?random=9',
    'https://picsum.photos/300/300?random=10',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(image: NetworkImage(images[widget.index]))
    );
  }
}
