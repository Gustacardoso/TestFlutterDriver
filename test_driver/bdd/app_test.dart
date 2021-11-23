import 'dart:async';
import 'dart:io';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import './steps/nova_tarefa.dart';


Future<void> main() {
final config = FlutterTestConfiguration()
    ..features = [Glob('test_driver/bdd/features/**.feature')]
   ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './reports/report.json')
    ]
    ..stepDefinitions = [AcessarNovaTarefa(), NumeroConta(), saldodeconta(),confirmar()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/bdd/app.dart";

  return GherkinRunner().execute(config);
}



