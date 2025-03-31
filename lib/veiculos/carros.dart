import 'dart:ffi';

class Carro {
  String marca;
  String modelo;
  String cor;
  int ano;
  bool movimento;

  String? urlImage;

  Carro({
    required this.marca,
    required this.modelo,
    required this.cor,
    required this.ano,
    required this.movimento,
    required this.urlImage,
  });

  Andar(){
    if (movimento == true){
      print("O veículo está em movimento");
    } else {
      print("O veículo está parado");
    }
  }
}
