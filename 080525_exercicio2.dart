// Classe abstrata Conta
abstract class Conta {
  // Atributos comuns
  String _titular;
  double _saldo;
  
  // Atributo estático para contar o número de contas
  static int _numeroDeContas = 0;

  // Construtor
  Conta(this._titular, this._saldo) {
    _numeroDeContas++; // Incrementa o número de contas sempre que um objeto Conta é criado
  }

  // Getters
  String get titular => _titular;
  double get saldo => _saldo;

  // Setters
  set titular(String titular) => _titular = titular;
  set saldo(double saldo) => _saldo = saldo;

  // Método abstrato para sacar dinheiro
  void sacar(double valor);

  // Método estático para obter o número de contas
  static int get numeroDeContas => _numeroDeContas;

  // Método para exibir informações da conta
  void exibirInformacoes() {
    print('Titular: $_titular');
    print('Saldo: $_saldo');
  }
}

// Subclasse ContaPoupanca
class ContaPoupanca extends Conta {
  // Atributo adicional específico para ContaPoupanca
  double _juros;

  // Construtor
  ContaPoupanca(String titular, double saldo, this._juros) : super(titular, saldo);

  // Getters e Setters
  double get juros => _juros;
  set juros(double juros) => _juros = juros;

  // Implementação do método sacar para ContaPoupanca
  @override
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de \$${valor} realizado na Conta Poupança.');
    } else {
      print('Saldo insuficiente para saque na Conta Poupança.');
    }
  }

  // Exibe informações da Conta Poupança
  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Juros: $_juros% ao ano');
  }
}

// Subclasse ContaCorrente
class ContaCorrente extends Conta {
  // Atributo adicional específico para ContaCorrente
  double _limite;

  // Construtor
  ContaCorrente(String titular, double saldo, this._limite) : super(titular, saldo);

  // Getters e Setters
  double get limite => _limite;
  set limite(double limite) => _limite = limite;

  // Implementação do método sacar para ContaCorrente
  @override
  void sacar(double valor) {
    if (valor <= saldo + limite) {
      saldo -= valor;
      print('Saque de \$${valor} realizado na Conta Corrente.');
    } else {
      print('Saldo insuficiente para saque na Conta Corrente.');
    }
  }

  // Exibe informações da Conta Corrente
  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Limite de crédito: \$$_limite');
  }
}

void main() {
  // Criando contas
  ContaPoupanca contaPoupanca = ContaPoupanca('João', 5000, 3.5);
  ContaCorrente contaCorrente = ContaCorrente('Maria', 1000, 2000);

  // Exibindo informações antes do saque
  print('Informações da Conta Poupança:');
  contaPoupanca.exibirInformacoes();
  print('\nInformações da Conta Corrente:');
  contaCorrente.exibirInformacoes();
  
  // Realizando saques
  print('\nRealizando saques:');
  contaPoupanca.sacar(1000);
  contaCorrente.sacar(2500);

  // Exibindo informações após o saque
  print('\nInformações da Conta Poupança após saque:');
  contaPoupanca.exibirInformacoes();
  print('\nInformações da Conta Corrente após saque:');
  contaCorrente.exibirInformacoes();

  // Verificando o número de contas criadas
  print('\nNúmero total de contas criadas: ${Conta.numeroDeContas}');
}
