import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;
  final String key_name;

  Editor({
    this.controlador,
    this.rotulo,
    this.dica,
    this.icone,
    this.key_name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
       
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        key: Key(key_name),
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
