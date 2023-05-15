import 'dart:io';

import 'package:flutter/material.dart';
import 'package:genshin_impact/colors/colors.dart';
import 'package:genshin_impact/widgets/card_character_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height *0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://www.freepnglogos.com/uploads/genshin-impact-logo-png/genshin-impact-shadow-logo-by-kurikuo-steamgriddb-4.png')
                    )
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height*0.85,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  sliver: SliverGrid(
                    delegate: SliverChildListDelegate(
                      _getCharacters()
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Platform.isWindows ? 6 : 2,
                      mainAxisExtent: 290,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _getCharacters(){
    List<Widget> items = [];

    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );
    items.add(
      CardCharacterWidget()
    );

    items.add(
      CardCharacterWidget()
    );
    return items;
  }
}