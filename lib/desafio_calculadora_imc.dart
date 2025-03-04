
double calcularIMC(double peso, double altura){
  return peso / (altura*altura);
}

String calcularClassificacao(double imc){
  if (imc < 16.0){
    return "Magreza grave";
  } else if (imc < 17.0){
    return "Magreza moderada";
  } else if (imc < 18.5){
    return "Magreza leve";
  } else if (imc < 25.0){
    return "Saudável";
  } else if (imc < 30.0){
    return "Sobrepeso";
  } else if (imc < 35.0){
    return "Obesidade Grau I";
  } else if (imc < 40.0){
    return "Obesidade Grau II (severa)";
  } else {
    return "Obesidade Grau III (mórbida)";
  }
}
