import 'package:app_car/dados/meu_carro.dart';
import 'package:app_car/veiculos/carros.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Carro meucarro = getmeuCarro();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sua Garagem",
            style: TextStyle(
              color: const Color.fromARGB(242, 3, 3, 3),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(251, 2, 74, 182),
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 7,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Marca: " + meucarro.marca,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                "Modelo: " + meucarro.modelo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                "Cor: " + meucarro.cor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                "Ano: " + meucarro.ano.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Image.network(
                meucarro.urlImage!,
                width: 550,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
