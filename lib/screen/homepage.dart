import 'package:cardapio/animal_type.dart';
import 'package:cardapio/header.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children:  [
          const Header(),
          const SizedBox(height: 10),
          const AnimalType(),
          const SizedBox(height: 15),
          Column(
            children:  [
              const SizedBox(height: 10),
              ListView(
                
              )

            ],
          )
        ],
      ),
    );
  }
}
