//Questao 46
class Livro {
  String titulo;
  String autor;
  num anoPublicacao;

  Livro(this.titulo, this.autor, this.anoPublicacao);

  String exibirDetalhes(){
    return "Título: $titulo, Autor: $autor, Ano: $anoPublicacao";
  }
}

//Questao 47
class Contador {
  int _valor = 0;

  void Incrementar(){
    _valor++;
    print(_valor);
  }

  void Resetar(){
    _valor = 0;
    print(_valor);
  }

}

//Questao 48
class Aluno{
  String nome;
  num? matricula;

  Aluno(this.nome, this.matricula);
  Aluno.semMatricula(this.nome){
    matricula = null;
  }

  void exibir(){
    print("$nome ; $matricula");
  }
}

//Questao 49
class Produto {
  String nome;
  num preco;

  Produto({required String this.nome, num this.preco = 0.0});
  void exibir(){print('$nome ; $preco');}
}

//Questao 50
class Veiculo{
  String marca;
  num velocidadeMaxima;

  Veiculo(this.marca, this.velocidadeMaxima);
}
class Carro extends Veiculo{
  int quantidadePortas;

  Carro(String marca, int velocidadeMaxima, this.quantidadePortas)
      : super(marca, velocidadeMaxima);
}

void main(){
  var livro = Livro("Dom Casmurro", 'Machado de Assis', 1899);
  print(livro.exibirDetalhes());

  var contador = Contador();
  contador.Incrementar();
  contador.Incrementar();
  contador.Incrementar();
  contador.Resetar();

  var aluno = Aluno("jose", 2023);
  var aluno_semMatricula = Aluno.semMatricula("jose");
  aluno.exibir();
  aluno_semMatricula.exibir();

  var produto = Produto(nome: "Arroz");
  produto.exibir();

  var carro = Carro('Toyota', 200, 4);
  print(carro.quantidadePortas);
}