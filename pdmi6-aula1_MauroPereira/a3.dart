/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 1 - Atividade 3/4
*/

class Animal {
  //atributos:
  int id;
  String nome;
  String cor;

  //construtor:
  Animal(this.id, this.nome, this.cor);

  //getteresetter:

  //métodos:
  void mostrarDetalhes() {
    print('ID: $id, Nome: $nome, Cor: $cor');
  }
}

//classe extends:
class Cat extends Animal {
  //atributos:
  String som;

  //construtor:
  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

  //getteresetter:

  //métodos:
  @override
  void mostrarDetalhes() {
    super.mostrarDetalhes(); // Exibe os detalhes da classe Animal
    print('Som: $som');
  }
}

//função:
void main() {
  //criar objeto:
  Cat gato = Cat(1, 'Miau', 'Cinza', 'Miau!');

  //exibir:
  gato.mostrarDetalhes();
}

