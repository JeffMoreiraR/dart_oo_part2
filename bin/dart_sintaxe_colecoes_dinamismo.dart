import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);

  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.visitar("Alagoas");

  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.visitar("USA");

  print(viagemMaio.consultarTotalLocaisVisitados);

  print(viagemMaio.registrosVisitados);

}
