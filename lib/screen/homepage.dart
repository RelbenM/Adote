import 'package:cardapio/components/animal_cards.dart';
import 'package:cardapio/components/animal_type.dart';
import 'package:cardapio/constants.dart';
import 'package:cardapio/components/header.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(), 
            SizedBox(height: 10),
            AnimalType(),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Todos', style: kCardIndexText),
            ),
            AnimalCards(),
            
          ],
        ),
      ),
    );
  }
}
