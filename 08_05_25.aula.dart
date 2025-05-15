class Carro {
  String _marca;
  String _modelo;
  int _ano;

  Carro (this._marca, this._modelo, this._ano);

  String get marca {
    return _marca;
  }

  String get modelo => _modelo;
  int get ano => _ano;


  set marca(String marca){
    _marca = marca;
  }

  set modelo(String modelo){
    _modelo = modelo;
  }

  set ano (int ano){
    _ano = ano;
  }

  calcular(int ano){
    int idade_carro;

    if (ano < this._ano){
      idade_carro = _ano - ano;
    } else if (ano > this._ano){
      idade_carro = ano - _ano;
    }
  }

  exibirInformacoes(){
    print("Informações do Carro: \n");
    print(_ano);
    print(_modelo);
    print(_marca);
  }
}