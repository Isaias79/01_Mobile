import 'dart:io';


// Questao 24
void main() {
    int i = 0;
    while (true){
      
      
      stdout.write('Digite um número positivo: ');
      String? numero_recebido = stdin.readLineSync(); // lê uma linha do usuário
      int inteiro = int.parse(numero_recebido!);
      
      if (inteiro < 0){
        break;
      }

      i++;
    }

    print("o número recebido é negativo");
    print("Tentativas: $i ");
}