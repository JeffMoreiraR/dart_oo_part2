import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DJS23K";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, double> registrarPrecos = {};
  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});
  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("Vou de CARRO para aventura!");
        break;
      case Transporte.bike:
        print("Vou de BIKE para aventura!");
        break;
      case Transporte.onibus:
        print("Vou de BUSÃO para aventura!");
        break;
      default:
        print("Vou para aventura");
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    alterarTotalLocaisVisitados = 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarTotalLocaisVisitados(int novaQuantidade){
    _totalLocaisVisitados += novaQuantidade;
  }

}
