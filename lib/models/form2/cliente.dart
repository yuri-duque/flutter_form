import 'package:mobx/mobx.dart';
part 'cliente.g.dart';

class Cliente = _ClienteBase with _$Cliente;

abstract class _ClienteBase with Store {
  @observable
  String? nome;
  @action
  changeNome(String value) => nome = value;

  @observable
  String? email;
  @action
  changeEmail(String value) => email = value;

  @observable
  String? cpf;
  @action
  changeCPF(String value) {
    cpf = value;
  }

  @computed
  bool get isValido {
    if (validateName() != null ||
        validateEmail() != null ||
        validateCPF() != null) return false;

    if (nome == null || email == null || cpf == null) {
      return false;
    }

    return true;
  }

  String? validateName() {
    if (nome != null && nome?.trim().isEmpty == true) {
      return "este campo é obrigatório!";
    }
    return null;
  }

  String? validateEmail() {
    if (email != null && email?.trim().isEmpty == true) {
      return "este campo é obrigatório!";
    }
    return null;
  }

  String? validateCPF() {
    if (cpf != null && cpf?.trim().isEmpty == true) {
      return "este campo é obrigatório!";
    }
    return null;
  }
}
