import 'dart:io';

void main() {
    //print('Olá, Dart!');

    // Questao 1
    var luan = 28;

    // Questao 2
    double luan_height = 1.78;

    // Questao 3
    var animal = "Pet";

    //Questao 4
    bool lampada = true;

    //Questao 5
    int a = 10;
    int b = 5;
    int soma = a + b;
    print("Soma:");
    print(soma);

    //Questao 6
    int resto = a % b;
    print("Resto:");
    print(resto);

    //QUESTAO 7

    double valorCompra = 10.00;
    print("Questao 7:");
    print(valorCompra - (valorCompra * 0.10));

    //QUESTAO 8
    String nomeProduto = "Caneta";
    double precoCamisa = 20;
    String Concatenacao = "\n O Nome do Produto: $nomeProduto \n Preço do Produto: $precoCamisa \n";
    print(Concatenacao);

    //QUESTAO 9
    
    List<String> Cidades = ["Aracajú", "São Paulo", "Rio de Janeiro"];
    print(Cidades[1]);

    //QUESTAO 10
    Set<int> numeros = {1,2,3,2}; //Lista que não mostra valores duplicados
    print(numeros);

    //QUestao 11
    Map<String, double> Frutas = {
      "Abacaxi": 5,
      "Mamão": 2.5,
      "Maça": 1
    };
    print(Frutas["Abacaxi"]);

    //Questao 12
    dynamic valor = 10;
    print(valor);
    valor = "Mudado";
    print(valor);

    //Questao 13
    int idade = 18;
    idade >= 18 ? print("Maior Idade") : print("Menor Idade");

    //Questao 14
    String? nome;
    String meuNome = nome ?? "JOSÉ";
    print(meuNome);

    //Questao 15
    final PI = 3.14;
    //PI = 2;
    print(PI);

    /// ===================== PARTE II
    /// Questao 16
    /// 
    stdout.write('Digite sua idade: ');
    String? idade_entrada = stdin.readLineSync(); // lê uma linha do usuário
    int inteiro = int.parse(idade_entrada);

    if(inteiro >= 18){
      print("Você é maior de Idade");
    } else {
      print("Você é Menor de Idade");
    }
    
}

