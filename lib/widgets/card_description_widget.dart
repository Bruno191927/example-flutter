import 'dart:io';

import 'package:flutter/material.dart';

import 'card_image_widget.dart';

class CardDescription extends StatelessWidget {
  final String url;
  final String description;
  final String title;
  const CardDescription({ Key? key, required this.url, required this.description, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardImageWidget(
          height: 180,
          width: 105,
          boxFit: BoxFit.cover, 
          url: url
        ),
        const SizedBox(width: 20,),
        SizedBox(
          width: Platform.isWindows? 400:250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(title,style: TextStyle(color: Colors.white),)
              ),
              Text(description,style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    );
  }
}