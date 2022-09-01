bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, {required int dias, String cor = 'Sem cor'}) {
  if (dias >= 30) {
    print('A $nome está madura!');
  } else {
    print('A $nome não está Madura!');
  }
  if (cor != null) {
    print('A $nome é $cor');
  }
}

int? quantosDiasFaltam(int diasAposColher, int diasParaMadurar) {
  if (diasParaMadurar <= diasAposColher) {
    print('Afruta Já está madura!');
  } else {
    return diasParaMadurar - diasAposColher;
  }
}

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);

  mostrarMadura('Uva', dias: 40, cor: 'Roxa');
  print('Faltam dias para madurar? Se sim quantos?');
  print(quantosDiasFaltam(diasDesdeColheita, 30));
}
