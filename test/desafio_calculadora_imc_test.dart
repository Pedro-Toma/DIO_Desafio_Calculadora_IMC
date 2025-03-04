import 'package:desafio_calculadora_imc/desafio_calculadora_imc.dart' as calculadora;
import 'package:test/test.dart';

void main() {
  group('Testar Cálculo do IMC', () {
    var valuesToTest = {
      {"peso" : 45, "altura" : 1.70}: 15.5,
      {"peso" : 55, "altura" : 1.82}: 16.6,
      {"peso" : 53.5, "altura" : 1.72}: 18,
      {"peso" : 60, "altura" : 1.65}: 22,
      {"peso" : 75.5, "altura" : 1.7}: 26.1,
      {"peso" : 85, "altura" : 1.65}: 31.2,
      {"peso" : 115, "altura" : 1.75}: 37.5,
      {"peso" : 150, "altura" : 1.85}: 43.8,
    };
    valuesToTest.forEach((values, expected){
      test('Dados: $values, Esperado: $expected', () {
        expect(calculadora.calcularIMC(
            double.parse(values["peso"].toString()),
            double.parse(values["altura"].toString())
        ),
        inInclusiveRange(expected-0.1, expected+0.1));
      });
    });
  });

  group('Testar Definição da Classificação', () {
    var valuesToTest = {
      {"imc": 15.5}: "Magreza grave",
      {"imc": 16.6}: "Magreza moderada",
      {"imc": 18}: "Magreza leve",
      {"imc": 22}: "Saudável",
      {"imc": 26.1}: "Sobrepeso",
      {"imc": 31.2}: "Obesidade Grau I",
      {"imc": 37.5}: "Obesidade Grau II (severa)",
      {"imc": 43.8}: "Obesidade Grau III (mórbida)",
    };
    valuesToTest.forEach((values, expected){
      test('Dados: $values, Esperado: $expected', () {
        expect(calculadora.calcularClassificacao(
            double.parse(values["imc"].toString()),
        ),
        equals(expected));
      });
    });
  });
}
