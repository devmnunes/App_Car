

import 'package:app_car/dados/meu_carro.dart';
import 'package:app_car/veiculos/carros.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    Carro meucarro = getCarro();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Veículos"
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }

}