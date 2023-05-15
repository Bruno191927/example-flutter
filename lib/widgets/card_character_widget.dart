import 'package:flutter/material.dart';

class CardCharacterWidget extends StatelessWidget {
  const CardCharacterWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://static.wikia.nocookie.net/gensin-impact/images/9/9c/Kamisato_Ayaka_Item.png/revision/latest?cb=20210721040744')
            )
          ),
        ),
        const Text('Ayaka', style: TextStyle(fontSize: 25,color: Colors.white))
      ],
    );
  }
}