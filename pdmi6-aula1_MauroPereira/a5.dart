/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 1 - Atividade 5
*/

class Camera {
  //atributos:
  int _id;
  String _marca;
  String _cor;
  double _preco;

  //construtor:
  Camera(this._id, this._marca, this._cor, this._preco);

  //getteresetter:
  //- id:
  int get id => _id;
  set id(int id) => _id = id;

  //- marca:
  String get marca => _marca;
  set marca(String marca) => _marca = marca;

  //- cor:
  String get cor => _cor;
  set cor(String cor) => _cor = cor;

  //-preço:
  double get preco => _preco;
  set preco(double preco) => _preco = preco;

  //métodos:
  void mostrarDetalhes() {
    print('ID: $_id, Marca: $_marca, Cor: $_cor, Preço: R\$ $_preco');
  }
}

//função:
void main() {
  //criar objetos:
  Camera camera1 = Camera(1, 'Canon', 'Preta', 2500.00);
  Camera camera2 = Camera(2, 'Nikon', 'Branca', 3000.00);
  Camera camera3 = Camera(3, 'Sony', 'Prata', 3500.00);

  //exibir:
  camera1.mostrarDetalhes();
  camera2.mostrarDetalhes();
  camera3.mostrarDetalhes();
}

