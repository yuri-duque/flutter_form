import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formulario/form1/controller.dart';

class Form1Page extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: controller.mudarNome),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(labelText: 'Sobrenome'),
                onChanged: controller.mudarSobrenome),
            SizedBox(
              height: 20,
            ),
            Text('Nome completo'),
            Observer(builder: (_) {
              return Text(controller.nomeCompleto);
            })
          ],
        ),
      ),
    );
  }
}
