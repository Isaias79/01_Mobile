import 'dart:math';

// 51. Classe Animal e Gato
class Animal {
  void emitirSom() {
    print("Som genérico");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print("Miau!");
  }
}

// 52. Forma, Quadrado, Circulo
abstract class Forma {
  double calcularArea();
}

class Quadrado extends Forma {
  double lado;
  Quadrado(this.lado);

  @override
  double calcularArea() => lado * lado;
}

class Circulo extends Forma {
  double raio;
  Circulo(this.raio);

  @override
  double calcularArea() => pi * raio * raio;
}

// 53. Notificacao, Email, SMS
abstract class Notificacao {
  void enviar();
}

class Email extends Notificacao {
  @override
  void enviar() => print("Email enviado!");
}

class SMS extends Notificacao {
  @override
  void enviar() => print("SMS enviado!");
}

// 54. ContaBancaria
class ContaBancaria {
  double _saldo = 0;

  void depositar(double valor) {
    _saldo += valor;
    print("Depósito: R\$${valor.toStringAsFixed(2)}");
  }

  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
      print("Saque: R\$${valor.toStringAsFixed(2)}");
    } else {
      print("Erro: Saldo insuficiente");
    }
  }
}

// 55. Termometro
class Termometro {
  double _temperaturaC = 0;

  void ajustarTemperatura(double novaTemp) {
    if (novaTemp >= -50 && novaTemp <= 100) {
      _temperaturaC = novaTemp;
      print("Temperatura ajustada: $_temperaturaC °C");
    } else {
      print("Erro: Temperatura fora do intervalo permitido");
    }
  }
}

// 56. Retangulo
class Retangulo {
  double _largura = 0;
  double _altura = 0;

  double get largura => _largura;
  double get altura => _altura;

  set largura(double valor) {
    if (valor > 0) _largura = valor;
    else print("Erro: Valor inválido para largura");
  }

  set altura(double valor) {
    if (valor > 0) _altura = valor;
    else print("Erro: Valor inválido para altura");
  }
}

// 57. Usuario com validação de email
class Usuario {
  String _email = "";

  String get email => _email;

  set email(String novoEmail) {
    if (novoEmail.contains("@")) _email = novoEmail;
    else print("Erro: Email inválido");
  }
}

// 58. Autenticavel
abstract class Autenticavel {
  bool autenticar(String senha);
}

class UsuarioAutenticavel implements Autenticavel {
  @override
  bool autenticar(String senha) => senha == "1234";
}

// 59. Calculavel
abstract class Calculavel {
  double calcular(double a, double b);
}

class Soma implements Calculavel {
  @override
  double calcular(double a, double b) => a + b;
}

class Subtracao implements Calculavel {
  @override
  double calcular(double a, double b) => a - b;
}

// 60. Dispositivo
abstract class Dispositivo {
  void ligar();
}

class Celular extends Dispositivo {
  @override
  void ligar() => print("Celular ligado!");
}

// 61. FormaGeometrica
abstract class FormaGeometrica {
  double calcularArea();
}

class Triangulo extends FormaGeometrica {
  double base, altura;
  Triangulo(this.base, this.altura);

  @override
  double calcularArea() => (base * altura) / 2;
}

class RetanguloGeo extends FormaGeometrica {
  double largura, altura;
  RetanguloGeo(this.largura, this.altura);

  @override
  double calcularArea() => largura * altura;
}


// 62. Divisão segura
void divisaoSegura() {
  int a = 10;
  int b = 0;
  try {
    print(a ~/ b);
  } catch (e) {
    print("Erro: Divisão por zero");
  }
}

// 63. Conversão segura
void converterTextoParaInt(String texto) {
  try {
    int numero = int.parse(texto);
    print("Número convertido: $numero");
  } catch (e) {
    print("Erro: Não foi possível converter '$texto'");
  }
}

// 64. Acesso à lista com erro tratado
void acessarLista() {
  List lista = [1, 2, 3];
  try {
    print(lista[5]);
  } catch (e) {
    print("Erro: Índice fora do intervalo");
  }
}

// 65. Exceção personalizada de email
class EmailInvalidoException implements Exception {
  String toString() => "Email inválido: faltando '@'";
}

void validarEmail(String email) {
  try {
    if (!email.contains("@")) throw EmailInvalidoException();
    print("Email válido: $email");
  } catch (e) {
    print(e);
  }
}

// 66. Combinação de conversão e acesso
void processarEntrada(String entrada) {
  List lista = [10, 20, 30];
  try {
    int numero = int.parse(entrada);
    print(lista[numero]);
  } on FormatException {
    print("Erro: Não é um número válido");
  } on RangeError {
    print("Erro: Índice fora do intervalo");
  }
}

void main() {
  // 51
  Animal gato = Gato();
  gato.emitirSom();

  // 52
  Forma forma1 = Quadrado(5);
  Forma forma2 = Circulo(3);
  print(forma1.calcularArea()); // 25
  print(forma2.calcularArea()); // ~28.27

  // 53
  Notificacao n1 = Email();
  Notificacao n2 = SMS();
  n1.enviar();
  n2.enviar();

  // 54
  var conta = ContaBancaria();
  conta.depositar(1000);
  conta.sacar(500);
  conta.sacar(600);

  // 55
  var term = Termometro();
  term.ajustarTemperatura(30);
  term.ajustarTemperatura(120);

  // 56
  var ret = Retangulo();
  ret.largura = 10;
  ret.altura = -5;

  // 57
  var usuario = Usuario();
  usuario.email = "usuario.com";
  usuario.email = "usuario@email.com";

  // 58
  var user = UsuarioAutenticavel();
  print(user.autenticar("1234")); // true

  // 59
  var soma = Soma();
  var sub = Subtracao();
  print(soma.calcular(10, 5)); // 15
  print(sub.calcular(10, 5)); // 5

  // 60
  Dispositivo disp = Celular();
  disp.ligar();

  // 61
  FormaGeometrica t = Triangulo(10, 5);
  FormaGeometrica r = RetanguloGeo(4, 6);
  print(t.calcularArea()); // 25
  print(r.calcularArea()); // 24

  // 62
  divisaoSegura();

  // 63
  converterTextoParaInt("abc");

  // 64
  acessarLista();

  // 65
  validarEmail("usuario.example.com");

  // 66
  processarEntrada("5");
  processarEntrada("a");
}
