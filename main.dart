import 'dart:math';
//importando os dados obtidos após executar apiLoterias.js
import './data.dart';
List<int> Function() gerar = () {
  List<int> lista = [];
  for (int i = 0; i < 6; i++) {
    lista.add(Random().nextInt(61));
  }
  return lista;
};
main() {
  //Instânciando um objeto da class Data e obtendo os dados da Lista data da class que será usada pelo algoritmo
  var data = new Data().data;
  List<List<int>> table = [];
  for (var c = 0; c < data.length; c++) {
    table.insert(c, gerar());
  }
  Function() t = () {
    List<int> jogo = [];
    int t = 0;
    for (t; t < data.length; t++) {
      for (var e = 0; e < data[t].length; e++) {
        if (table[t][e] == data[t][e] && !jogo.contains(table[t][e])) {
          jogo.add(table[t][e]);
          print(table[t][e]);
        }
      }
    }
    print("Os Numeros mais provaveis de sair são : ${jogo}");
  };
  t();
}
