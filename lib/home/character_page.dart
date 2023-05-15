import 'package:flutter/material.dart';
import 'package:genshin_impact/colors/colors.dart';
import 'package:genshin_impact/styles/my_text_styles.dart';
import 'package:genshin_impact/widgets/card_description_widget.dart';
import 'dart:io' show Platform;

import 'package:genshin_impact/widgets/card_image_widget.dart';
class CharacterPage extends StatelessWidget {
  const CharacterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 54.8,
                  width: 400,
                  child: Row(
                    children: [
                      Text('Kamisato Ayaka', style: MyTextStyles.title,)
                    ],
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://static.wikia.nocookie.net/gensin-impact/images/f/f0/Namecard_Banner_Kamisato_Ayaka_Folding_Fan.png/revision/latest/scale-to-width-down/1000?cb=20210725071348')
                    )
                  )
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _general()
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _descriptions(),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _skills()
            )
          ],
        ),
      ),
    );
  }

  Widget _general(){
    List<Widget> list = [
      const CardImageWidget(
        height: 250,
        width: 500,
        boxFit: BoxFit.cover, 
        url: 'https://static.wikia.nocookie.net/gensin-impact/images/a/a0/Kamisato_Ayaka_Wish.png/revision/latest/scale-to-width-down/1000?cb=20210721040743'
      ),
      SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Text('Personalidad',style: TextStyle(color: Colors.white),)
            ),
            const Text('Kamisato Ayaka es una chica de buen corazón con un temperamento agradable que trata a los demás con cortesía y amabilidad. Ella aprecia a la gente de Inazuma en su corazón y, a menudo, hace todo lo posible para ayudarlos personalmente en todo tipo de asuntos. Ella es una perfeccionista con una personalidad seria. La gente a menudo se conmueve por su dedicación, y sus allegados le otorgaron el título honorífico de "Princesa Garza". La gente del barrio siempre habla de ella con sincera admiración. Ella es muy querida y muy popular de Inazuma, pero no tiene buenas habilidades sociables para hacer amistad con nadie. La gente de su ciudad natal quiere acercarse y hacerse amiga de ella, pero lamentablemente piensan demasiado que no encajarían en la presencia elegante de Kamisato Ayaka y que su conversación no iría bien.\nGracias a la influencia de la excelente educación de Kamisato Ayaka, su corazón es tan puro como el hielo cristalizado. Al igual que los espléndidos colores reflejados cuando los cristales de hielo giran en el aire invernal, así es el espíritu de Kamisato Ayaka. Ella no solo posee una gran belleza exterior y un comportamiento elegante, sino que también, que no es conocido por muchos, tiene un lado tierno y lindo. Pero si desea capturar un corazón que cuelga en lo alto del cielo, debe tener la capacidad de trepar por las nubes. En otras palabras, Kamisato Ayaka está ansiosa por asociarse con personas capaces de lograr grandes hazañas; a sus ojos, las amistades las dicta el destino, de la misma manera que estaba destinada a blandir su espada cubierta de escarcha.', style: TextStyle(color: Colors.white),maxLines: 11,overflow: TextOverflow.ellipsis,),
          ],
        ),
      )
    ];
    if(Platform.isWindows){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list,
      );
    }
    else{
      return Column(
        children: list.reversed.toList(),
      );
    }
  }

  Widget _descriptions(){
    List<Widget> list = [
      const CardDescription(
        url: 'https://static.wikia.nocookie.net/gensin-impact/images/5/5f/Frostflake_Seki_no_To_Summon.png/revision/latest?cb=20221209140736', 
        description: 'Ella es la hija menor del Clan Kamisato y hermana de Kamisato Ayato. Siendo hermosa, elegante y agraciada, la gente común no tiene nada de qué hablar mal de Kamisato Ayaka. Debido a su estatus social como la hija menor del Clan Kamisato de la Comisión Yashiro y como la Princesa Garza, Kamisato Ayaka es vista como un modelo de perfección.', 
        title: 'Descripcion'
      ),
      const CardDescription(
        url: 'https://static.wikia.nocookie.net/gensin-impact/images/7/72/Kamisato_Ayaka_Character_Card.png/revision/latest?cb=20221205102416', 
        description: 'Kamisato Ayaka es una chica de estatura ligeramente inferior a la media. Mantiene su largo cabello azul blanco atado en una coleta alta con un tocado blindado. Su flequillo es de corte recto, con dos mechones frontales de su cabello a los lados separados por nudos de flores rosas de 3 pétalos. Sus ojos de color gris azulado claro están acompañados de pestañas gruesas y un lunar debajo de su ojo izquierdo.', 
        title: 'Apariencia'
      ),
    ];
    if(Platform.isWindows){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: list,
      );
    }
    else{
      return Column(
        children: list,
      );
    }
  }

  Widget _skills(){
    List<Widget> list = [
      Column(
        children: const [
          Text('Ataque Normal'),
          CardImageWidget(
            height: 178,
            width: 300,
            boxFit: BoxFit.contain,
            url: 'https://static.wikia.nocookie.net/gensin-impact/images/3/3a/Kamisato_Art_Kabuki_Normal_Preview.gif/revision/latest?cb=20210721053512'
          ),
        ],
      ),
      Column(
        children: const [
          Text('Ataque Cargado'),
          CardImageWidget(
            height: 178,
            width: 300,
            boxFit: BoxFit.contain,
            url: 'https://static.wikia.nocookie.net/gensin-impact/images/3/37/Kamisato_Art_Hyouka_Preview.gif/revision/latest?cb=20210721053502'
          ),
        ],
      ),
      Column(
        children: const [
          Text('Definitiva'),
          CardImageWidget(
            height: 178,
            width: 300,
            boxFit: BoxFit.contain,
            url: 'https://static.wikia.nocookie.net/gensin-impact/images/d/d8/Kamisato_Art_Soumetsu_Preview.gif/revision/latest?cb=20210721053531'
          ),
        ],
      ),
    ];


    if(Platform.isWindows){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: list,
      );
    }
    else{
      return Column(
        children: list,
      );
    }
  }
}