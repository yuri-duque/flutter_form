import 'package:formulario/models/form2/cliente.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var cliente = new Cliente();
}
