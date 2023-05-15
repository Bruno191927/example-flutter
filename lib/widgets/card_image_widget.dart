import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final BoxFit boxFit;
  final String url;
  const CardImageWidget({ Key? key, required this.height, required this.width, required this.boxFit, required this.url }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: boxFit,
          image: NetworkImage(url)
        )
      )
    );
  }
}