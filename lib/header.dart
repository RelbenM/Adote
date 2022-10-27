import 'package:cardapio/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 200,
        color: Colors.blue,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 120, width: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
              child: Image.network('https://cdn-icons-png.flaticon.com/512/1864/1864514.png',
              fit: BoxFit.cover,),

            ),
            const SizedBox(width: 50),
            Column(
              children: const [
                Padding(padding: EdgeInsets.only(top: 45, bottom: 35),
            child: Text('Sua Ong aqui', style: kHeaderText,)),
            Padding(padding: EdgeInsets.only(top: 10),
             child: Text('Endereço: Rua Santa Luzia, \nBairro Santo Antônio', style: kHeaderSubText,))
              ],
            )
          ],
        ),
      ),
    );
  }
}