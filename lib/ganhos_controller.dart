import 'package:ganhos/ganhos_model.dart';

class GanhosController {
  final List<GanhoModel> ganhos = [];

  void adicionarGanho({
    required String titulo,
    required double valor,
  }) {
    final ganho = GanhoModel(
      titulo: titulo,
      valor: valor,
    );

    ganhos.add(ganho);
  }

  void visualizarGanhos() {
    for (final ganho in ganhos) {
      print(ganho.toString());
    }
  }
}
