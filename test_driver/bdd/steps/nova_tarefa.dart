import 'package:flutter_driver/src/driver/driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../pages/tarefa/criar.dart';




class AcessarNovaTarefa extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    NovaConta step1 = NovaConta(world.driver);
    await step1.button_inicial();
  }

  @override
  RegExp get pattern => RegExp(r"que eu aplico acessar conta");
  
}

class NumeroConta extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    NovaConta step2 = NovaConta(world.driver);
    await step2.n_conta("1234");
  }

  @override
  RegExp get pattern => RegExp(r"preencho numero da conta");
}


class saldodeconta extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    NovaConta step2 = NovaConta(world.driver);
    await step2.conta("99998");
  }

  @override
  RegExp get pattern => RegExp(r"saldo conta");
}

class confirmar extends StepDefinition<FlutterWorld> {

  @override
  Future<void> executeStep() async {
    NovaConta step2 = NovaConta(world.driver);
    await step2.buttonconfirmar();
  }

  @override
  RegExp get pattern => RegExp(r"aplico confirmar");
}
