import 'dart:ffi';

import 'package:flutter_driver/flutter_driver.dart';

class NovaConta{
  final FlutterDriver driver; 
  final SerializableFinder button_initial = find.byValueKey('ButtonIncial');
  final SerializableFinder numero_conta = find.byValueKey('numeroconta');
  final SerializableFinder valorconta = find.byValueKey('conta');
  final SerializableFinder confirmar = find.byValueKey('confirmar');
  NovaConta(this.driver);

  Future<void> button_inicial() async{
    await driver.tap(button_initial);
  }

  Future<void> n_conta( String numeroconta) async{
      await driver.tap(numero_conta);
      await driver.enterText(numeroconta);
      await driver.waitFor(find.text(numeroconta));
  }

  Future<void> conta( String vconta) async{
    await driver.tap(valorconta);
    await driver.enterText(vconta);
    await driver.waitFor(find.text(vconta)); 
  }
  
  Future<void> buttonconfirmar() async{
    await driver.tap(confirmar);

  }

  
}