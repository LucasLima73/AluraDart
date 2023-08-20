import 'dart:ffi';

import 'package:untitled/untitled.dart' as untitled;

import 'classeAbstrata.dart';

void main(List<String> arguments) {
  Fruta morango = Fruta("Morango", 40.5, "Vermelho", "Morango", 10);

  Legumes mandioca = Legumes('Mandioca', "Branco", 1000.5, true);

  mandioca.printAlimento();
  mandioca.cozinhar();
  morango.printAlimento();

}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colida a $diasDesdeColheita dias e precisa de $diasParaMadura ela ta madura $isMadura");
  }

  void fazerSuco() {
    print("SUdo de $nome");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("este $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinhar;

  Legumes(String nome, String cor, double peso, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Não precisa cozinhar");
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}
