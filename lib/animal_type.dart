import 'package:flutter/material.dart';

class AnimalType extends StatefulWidget {
  const AnimalType({super.key});

  @override
  State<AnimalType> createState() => _AnimalTypeState();
}

class _AnimalTypeState extends State<AnimalType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon:  Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/346/346072.png')),
            onPressed: () {},
          ),
          SizedBox(
              width: 50,
              height: 50,
              child: GestureDetector(
                child: const Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/6855/6855261.png')),
                onTap: () {
                  print('Gato selecionado');
                },
              )),
          SizedBox(
              width: 50,
              height: 50,
              child: GestureDetector(
                child: const Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/4600/4600205.png')),
                onTap: () {
                  print('cachorro selecionado');
                },
              )),
          SizedBox(
              width: 50,
              height: 50,
              child: GestureDetector(
                child: const Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3460/3460473.png')),
                onTap: () {
                  print('Ambos selecionado');
                },
              )),
        ],
      ),
    );
  }
}
