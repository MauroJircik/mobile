/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 1 - Atividade 2
*/

class House {
  //atributos:
  int id;
  String nome;
  double preco;

  //construtor:
  House(this.id, this.nome, this.preco);

  //getteresetter:

  //métodos:
  void mostrarDetalhes() {
    print('ID: $id, Nome: $nome, Preço: R\$ $preco');
  }
}

//função:
void main() {
  //criar objetos:
  House casa1 = House(1, 'Casa A', 500000.00);
  House casa2 = House(2, 'Casa B', 600000.00);
  House casa3 = House(3, 'Casa C', 450000.00);

  //adicionar lista:
  List<House> casas = [casa1, casa2, casa3];

  //exibir:
  for (var casa in casas) {
    casa.mostrarDetalhes();
  }
}

