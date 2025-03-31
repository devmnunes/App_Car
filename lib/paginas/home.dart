import 'package:app_car/dados/meu_carro.dart';
import 'package:app_car/veiculos/carros.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Carro meucarro = getmeuCarro();
    return Scaffold(
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
      body: Container(
        color: const Color.fromARGB(255, 216, 219, 219),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
            children: [
              Text(
                "Marca: " + meucarro.marca,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
               "Modelo: " + meucarro.modelo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "Cor: " + meucarro.cor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "Ano: " + meucarro.ano.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              Align(alignment: Alignment.centerLeft, child: Container(
                    child: Image.network(
                      meucarro.urlImage!,
              ),
                ), 
                ),
                
            ],
            ),
           ),
        ),
        ),
      );
  }
}
