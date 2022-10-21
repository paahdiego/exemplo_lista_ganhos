import 'package:ganhos/ganhos_controller.dart';
import 'package:ganhos/ganhos_menu.dart';

void main(List<String> arguments) {
  final ganhosController = GanhosController();

  final ganhosMenu = GanhosMenu(ganhosController: ganhosController);

  ganhosMenu.iniciar();
}
