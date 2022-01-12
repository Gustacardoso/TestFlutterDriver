import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group("end to end tests", (){
     FlutterDriver driver;
    
    setUpAll(() async {
      driver = await FlutterDriver.connect();
  
    });
        
     test("button iniciar", () async {
       SerializableFinder fab = find.byValueKey('ButtonIncial');
       await driver.tap(fab);
    
     });

      test("numero da conta", () async {
      
      //find.byText('tes');
       SerializableFinder fab = find.byValueKey('numeroconta');
       //SerializableFinder  testando = find.bySemanticsLabel('Número da conta');
     
     
       await driver.tap(fab);
       await driver.enterText('123');
       await driver.waitFor(find.text('123'));
       //expect(find.text('123'), findsOneWidget);
       //driver.tap(find.byValueKey("ButtonJaCadastro"));
     // await driver.tap(toque);
     });
      test("valor da conta", () async {
       SerializableFinder fab1 = find.byValueKey('conta');
       
      await driver.tap(fab1);
       await driver.enterText("1289");
       //driver.tap(find.byValueKey("ButtonJaCadastro"));
     // await driver.tap(toque);
     });
      test("button confirmar", () async {
       SerializableFinder fab = find.byValueKey('confirmar');
       
       await driver.tap(fab);
      
       //driver.tap(find.byValueKey("ButtonJaCadastro"));
     // await driver.tap(toque);
     });
     
     tearDownAll(() async {
       if(driver != null){
         driver.close();
       }
     });
  
  });
}