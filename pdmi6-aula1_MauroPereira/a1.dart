/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 1 - Atividade 1
*/

class Laptop {
  //atributos:
  int id;
  String nome;
  int ram;

  //construtor:
  Laptop(this.id, this.nome, this.ram);

  //getteresetter:

  //métodos:

  //string:
  @override
  String toString() {
    return 'ID: $id, Nome: $nome, RAM: $ram GB';
  }
}

//função:
void main() {
  //criar objetos:
  Laptop laptop1 = Laptop(1, 'Dell XPS 13', 16);
  Laptop laptop2 = Laptop(2, 'MacBook Air', 8);
  Laptop laptop3 = Laptop(3, 'Lenovo ThinkPad', 32);

  //exibir:
  print(laptop1);
  print(laptop2);
  print(laptop3);
}



