//import 'dart:io';
//import 'dart:js_util';

import 'dart:collection';

void questoes() {
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
    /*
    stdout.write('Digite sua idade: ');
    String? idade_entrada = stdin.readLineSync(); // lê uma linha do usuário
    int inteiro = int.parse(idade_entrada!);

    if(inteiro >= 18){
      print("Você é maior de Idade");
    } else {
      print("Você é Menor de Idade");
    }
    */

    // Questao 17
    int nota = 5;

    if (nota >= 7){
      print("Aprovado");
    } else if (nota >= 5){
      print("Recuperação ");
    } else {
      print("Reprovado");
    }

    // Questão 18
    /*
    stdout.write('Digite um número inteiro: ');
    String? num_inteiro = stdin.readLineSync(); // lê uma linha do usuário
    int inteiro = int.parse(num_inteiro!);

    print(inteiro%2 ? "par" : "impart");

    */

    // Questão 19
    int dia = 1;

    switch (dia){
      case 1:
        print("Segunda");
        break;
      case 2:
        print("Terça");
        break;
      case 3:
        print("Quarta");
        break;
      case 4:
        print("Quinta");
        break;
      case 5:
        print("Sexta");
        break;
      case 6:
        print("Sábado");
        break;
      case 7:
        print("Domingo");
        break;
      default:
        print("Inválido");
        break;
    }

    //Questão  20
    int n1 = 1;
    int n2 = 4;
    int n3 = 3;

    if (n1 > n2 && n1 > n3){
        print(n1);
    } else if (n3 > n1 && n3 > n2){
      print(n3);
    } else {
      print(n2);
    }

    //Questao 21
    for(int i = 10; i <= 10; i--){
      print(i);
      if(i == 1){
        break;
      }
    }

    // Questao 22
    int somaPar = 0;
    for (int i = 1; i <= 100; i++){
      if (i % 2 == 0){
        somaPar += i;
      }
    }
    print(somaPar);

    //Questao 23
    int numero = 2;

    for (int i = 1; i <= 10; i++){
      int resultado = numero * i;
      String tabuada = "$numero * $i = $resultado"; 
      print(tabuada);
    }

    // Questao 24
    /*
    stdout.write('Digite um número positivo: ');
    String? numero_recebido = stdin.readLineSync(); // lê uma linha do usuário
    int inteiro = int.parse(numero_recebido!);

    

    print(inteiro%2 ? "par" : "impart");

   
    int i = 0;
    while (true){
      if (numero_recebido){
        i++;
      }

      print("o número recebido é negativo");
      print("Tentativas: $i ");
    }
     */

    //Questao 25
    List<String> pessoas = ["Caim", "Abel", "José", "Manel"];

    for (String pessoa in pessoas){
      print(pessoa);
    }
    
}


//============ FUNCOES =============

//Qeustao 26

int calcularAreaRetangulo(int base, int altura){
  return base * altura;
}

//Questao 27
String apresentarPessoa(String nome, [int? idade] ){
  return "Seu nome: $nome, Idade: ${idade ?? "Não Informado"}";
}

//Questao 28
String enviarEmail(String destinatario, {String assunto = "Sem assunto", String corpo = "Mensagem vazia"}){
  return "\n Email enviado por: $destinatario \n Assunto: $assunto \n Corpo do texto: $corpo \n";
}

//Questao 29
int somarLista(List<int> numeros){
  int soma = 0;
  for(int num in numeros){
    soma += num;
  }

  return soma;
}

var saudacao = (nome) => "Olá $nome";

void main(){
  print(calcularAreaRetangulo(2,3));
  print(apresentarPessoa("josé", 15));
  print(enviarEmail("José"));
  print(somarLista([2,4,6,8]));

  //Questao 30
  print(saudacao("josé"));

  //========= Colecoes ==============
  //Questao 31
  List<int> valores = [1,2,3];
  valores.add(40);
  print(valores[2]);

  //Questao 32
  var frutas = ['maçã', 'banana', 'laranja', 'banana'];
  frutas.removeWhere((nome) => nome == "banana");
  print(frutas);

  //Questao 33
  List<int> num = [1, 1, 1];
  List<String> num_string = num.map((n) => 'Número $n').toList();
  print(num_string);

  //Questao 34
  var letras = {'a', 'b', 'c'};
  letras.add('a');
  print(letras);

  //Questao 35
  var set1 = {1, 2, 3};
  var set2 = {3, 4, 5};
  set1 = set1.union(set2);
  print(set1);

  //Questao 36
  List<int> lista = [1, 2, 2, 3, 4, 4, 5];
  Set<int> conjuntoSemDuplicatas = lista.toSet();
  print(conjuntoSemDuplicatas);  

  //Questao 37
  Map <String, dynamic> pessoa = {
    'nome': 'Ana',
    'idade': 25
  };

  pessoa.putIfAbsent("cidade", () => "São Paulo");
  pessoa["idade"] = 15;
  print(pessoa);

  //Questao 38
  var produtos = {'celular': 1500, 'notebook': 3000};
  var resultado = produtos.containsKey("tablet") ? produtos["tablet"] : produtos.putIfAbsent("tablet", () => 1000);
  print(resultado);

  //Questao 39
  Map <String, int> map1 = {
    'a': 1,
    'b': 2
  };

  Map <String, int> map2 = {
    "c":3
  };

  Map<String, int> resultado_map = {...map1, ...map2};
  print(resultado_map);

  //Questao 40
  Queue<String> Fila = Queue<String>();
  Fila.add("Primeiro");
  Fila.add("Segundo");
  Fila.add("Terceiro");
  print(Fila);

  //Questao 41
  Queue<String> fila_1 = Queue.from(Fila);
  fila_1.addFirst("0");
  fila_1.removeLast();
  print(fila_1);

  //Questoes 42
  List<String> lista_fila = fila_1.toList();
  print(lista_fila[1]);


  //Questao 43
  LinkedList<Node> lista_node = LinkedList<Node>();
  
  lista_node.add(Node(10));
  lista_node.add(Node(20));
  lista_node.add(Node(30));
  
  // Questão 44 — Remover o nó com valor 20
  for (var node in lista_node) {
    if (node.valor == 20) {
      node.unlink();
      break;
    }
  }

  //Questao 45 - Multiplicado por 2
  for (var node in lista_node) {
    print("\n Node ${node.valor * 2}");
  }

  for (var node in lista_node) {
    print("\n $node \n ");  
  }
}

//Questao 43
// Classe Node, cada nó armazena um valor inteiro
class Node extends LinkedListEntry<Node> {
  int valor;

  Node(this.valor);

  @override
  String toString() =>  'Node($valor)';
}

