/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 4 - Atividade 2
a2=main
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//classe MyApp:
//-cria o aplicativo Flutter
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar with FAB',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomAppBarWithFAB(),
    );
  }
}

//classe BottomAppBarWithFAB:
//-cria a tela
class BottomAppBarWithFAB extends StatefulWidget {
  @override
  _BottomAppBarWithFABState createState() => _BottomAppBarWithFABState();
}
class _BottomAppBarWithFABState extends State<BottomAppBarWithFAB> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  bool _isMenuOpen = false;
  late AnimationController _animationController;

  @override
  //-método para inicializar
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    super.initState();
  }

  //-método para selecionar a aba
  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //-método para alternar o menu
  void _toggleFabMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
      _isMenuOpen ? _animationController.forward() : _animationController.reverse();
    });
  }

  //-método para criar o menu
  Widget _buildFabMenu() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFabAction(icon: Icons.insert_drive_file, label: 'File'),
        _buildFabAction(icon: Icons.email, label: 'Email'),
        _buildFabAction(icon: Icons.phone, label: 'Phone'),
      ],
    );
  }

  //-método para criar os botões do menu
  Widget _buildFabAction({required IconData icon, required String label}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: FloatingActionButton(
        mini: true,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: $label')));
        },
        child: Icon(icon),
      ),
    );
  }

  @override
  //-método para construir a tela
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomAppBar with FAB')),
      body: Center(
        child: Text(
          'TAB: $_selectedIndex',
          style: TextStyle(fontSize: 24),
        ),
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_isMenuOpen) _buildFabMenu(),
          FloatingActionButton(
            onPressed: _toggleFabMenu,
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _animationController,
            ),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.view_module),
              onPressed: () => _onTabSelected(0),
              tooltip: 'This',
            ),
            IconButton(
              icon: Icon(Icons.view_week),
              onPressed: () => _onTabSelected(1),
              tooltip: 'Is',
            ),
            SizedBox(width: 48), // espaço para o FAB
            IconButton(
              icon: Icon(Icons.apps),
              onPressed: () => _onTabSelected(2),
              tooltip: 'Bottom',
            ),
            IconButton(
              icon: Icon(Icons.warning, color: Colors.red),
              onPressed: () => _onTabSelected(3),
              tooltip: 'Bar',
            ),
          ],
        ),
      ),
    );
  }

  @override
  //-método para animação
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}


