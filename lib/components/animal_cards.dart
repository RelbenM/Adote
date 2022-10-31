import 'package:cardapio/constants.dart';
import 'package:flutter/material.dart';

class AnimalCards extends StatefulWidget {
  const AnimalCards({super.key});

  @override
  State<AnimalCards> createState() => _AnimalCardsState();
}

class _AnimalCardsState extends State<AnimalCards> {

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          //Gatos
          AnimalCard(
              Color(0xFF2196F3),
              'https://d2zp5xs5cp8zlg.cloudfront.net/image-30938-800.jpg',
              'Floquinho',
              'm',
              3),
          AnimalCard(
              Color(0xFF607D8B),
              'https://www.fazfacil.com.br/wp-content/uploads/2015/02/20150216-gato-siames-5.jpg',
              'Roberto',
              'm',
              10),
          AnimalCard(
              Color(0xFF673AB7),
              'https://m.media-amazon.com/images/I/81g1NzYJZNL.png',
              'Mabel',
              'f',
              4),
          AnimalCard(
              Color(0xFFFF5252),
              'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
              'Tigrão',
              'm',
              1),
          
          //Cachorros
          
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget AnimalCard(
    Color color, String url, String name, String gender, int age) {
  if (gender == 'f') {
    gender = 'https://cdn-icons-png.flaticon.com/512/2159/2159168.png';
  } else if (gender == 'm') {
    gender = 'https://cdn-icons-png.flaticon.com/512/1019/1019070.png';
  }
  return Card(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      elevation: 5,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 15),
            height: 90,
            width: 90,
            child: Image.network(url),
          ),
          const SizedBox(width: 20),
          Column(
            children: [
              Text(name, style: kCardIndexText),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Idade: $age anos', style: kCardInfoText),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: Image.network(
              gender,
              width: 35,
              height: 35,
            ),
          )
        ],
      ));
}
