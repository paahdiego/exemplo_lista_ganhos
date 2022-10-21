// Adionar Ganhos
// Mostrar ganhos

import 'dart:developer';
import 'dart:io';

import 'package:ganhos/ganhos_controller.dart';

class GanhosMenu {
  final GanhosController ganhosController;

  GanhosMenu({
    required this.ganhosController,
  });

  void iniciar() {
    String? resposta;

    do {
      resposta = showMenu();
      log(resposta.toString());
      switch (resposta) {
        case "1":
          adicionarGanho();
          break;
        case "2":
          visualizarGanhos();
          break;
        case "0":
          break;
        default:
          break;
      }
    } while (resposta != "0");
  }

  String showMenu() {
    print("\tMENU");
    print("\t1. Adicionar ganho");
    print("\t2. Visualizar ganhos");
    print("\t0. Sair");

    final String resposta = stdin.readLineSync()!;

    return resposta;
  }

  void adicionarGanho() {
    final String titulo = stdin.readLineSync()!;
    final String valor = stdin.readLineSync()!;

    final valorEmDouble = double.parse(valor);

    ganhosController.adicionarGanho(titulo: titulo, valor: valorEmDouble);
  }

  void visualizarGanhos() {
    ganhosController.visualizarGanhos();
  }
}
