//Arquivo que gerencia o carrinho de compras

// Classe CartService
class CartService {
  //- atributos:
  static final CartService _instance = CartService._internal();
  factory CartService() => _instance;

  //- construtor:
  CartService._internal();

  //- lista de itens e quantidades:
  final List<Map<String, dynamic>> _items = [];
  final List<int> _quantities = [];

  //- métodos:
  List<Map<String, dynamic>> get items => _items;
  List<int> get quantities => _quantities;


  //  - função para adicionar um item ao carrinho
  void addItem(Map<String, dynamic> item) {
    final index = _items.indexWhere((i) => i['name'] == item['name']);
    if (index != -1) {
      _quantities[index]++;
    } else {
      _items.add(item);
      _quantities.add(1);
    }
  }

  //  - função para remover um item do carrinho
  void removeItem(int index) {
    _items.removeAt(index);
    _quantities.removeAt(index);
  }


  //  - função para aumentar ou diminuir a quantidade de um item
  void increaseQty(int index) => _quantities[index]++;
  void decreaseQty(int index) {
    if (_quantities[index] > 1) {
      _quantities[index]--;
    }
  }

  //  - função para o preço total do carrinho
  double get total {
    double sum = 0;
    for (int i = 0; i < _items.length; i++) {
      sum += _items[i]['price'] * _quantities[i];
    }
    return sum;
  }

  //  - função para limpar o carrinho
  bool get isEmpty => _items.isEmpty;
}









