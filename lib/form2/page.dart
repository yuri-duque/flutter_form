import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formulario/form2/controller.dart';

class Form2Page extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    _textField({String? labelText, onChanged, String? Function()? errorText}) {
      return TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText(),
        ),
        onChanged: onChanged,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('MobX'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) => _textField(
                labelText: "Nome",
                onChanged: controller.cliente.changeNome,
                errorText: controller.cliente.validateName,
              ),
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) => _textField(
                labelText: "Emial",
                onChanged: controller.cliente.changeEmail,
                errorText: controller.cliente.validateEmail,
              ),
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) => _textField(
                labelText: "CPf",
                onChanged: controller.cliente.changeCPF,
                errorText: controller.cliente.validateCPF,
              ),
            ),
            SizedBox(height: 20),
            Observer(builder: (_) {
              return ElevatedButton(
                onPressed: controller.cliente.isValido
                    ? () {
                        print("salvou");
                      }
                    : null,
                child: Text("Salvar"),
              );
            })
          ],
        ),
      ),
    );
  }
}
