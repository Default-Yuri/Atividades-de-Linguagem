import 'dart:io';

void main() {
  int n;
  List<int> valores = [];

  stdout.write('Digite a quantidade de valores a serem lidos: ');
  n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Número inválido. O programa será encerrado.');
    return;
  }

  for (int i = 1; i <= n; i++) {
    print('Digite o $i° valor: ');
    int valor = int.parse(stdin.readLineSync()!);

    if (valor <= 0) {
      print('Número inválido. O programa será encerrado.');
      return;
    }

    valores.add(valor);
  }

  print('Valores lidos: $valores');

  int fatorial = 1;
  for (int i = n; i >= 1; i--) {
    fatorial *= i;
  }

  print('Fatorial de $n: $fatorial');
}