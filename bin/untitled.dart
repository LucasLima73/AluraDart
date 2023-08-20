import 'dart:ffi';

import 'package:test/expect.dart';
import 'package:untitled/untitled.dart' as untitled;

void main(List<String> arguments) {
  Fruta fruta1 = Fruta("Morango", 40.5, "Vermelho", "Morango", 10);
  print(fruta1.sabor);

  fruta1.estaMadura(1);
  fruta1.estaMadura(60);
}

 listar(){
  List lista = ["Uva", 40, "roxo"];
  print(lista);
}

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor,this.sabor,this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colida a $diasDesdeColheita dias e precisa de $diasParaMadura ela ta madura $isMadura");
  }
}