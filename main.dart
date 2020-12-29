import 'dart:math';
List<List<int>> data = [
  [27, 40, 46, 49, 58],
  [10, 34, 37, 43, 50],
  [04, 29, 36, 45, 55],
  [14, 32, 33, 36, 41, 52],
  [20, 30, 36, 38, 47, 53],
  [01, 05, 11, 16, 20, 56],
  [02, 18, 31, 42, 51, 56],
  [05, 11, 22, 24, 51, 53],
  [06, 37, 34, 10, 03, 17],
  [05, 10, 12, 18, 25, 33],
  [03, 35, 38, 40, 57, 58]
];
main() {
  List<int> Function() gerar = () {
    List<int> lista = [];
    for (int i = 0; i < 6; i++) {
      lista.add(Random().nextInt(61));
    }
    return lista;
  };
  List<List<int>> table = [];
  for (var c = 0; c < 11; c++) {
    table.insert(c, gerar());
  }
  Function() t = () {
    List<int> jogo = [];
    int t = 0;

    for (t; t < data.length; t++) {
      for (var e = 0; e < data[t].length; e++) {
        if (table[t][e] == data[t][e]) {
          jogo.add(table[t][e]);
          print(table[t][e]);
        }
      }
    }

    print(jogo);
  };
  t();
}
