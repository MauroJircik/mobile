/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 4 - Atividade 3
a3=main
*/

import 'package:flutter/material.dart';

void main() {
  runApp(TaskApp());
}

//classe TaskApp:
//-cria o aplicativo Flutter
class TaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notas de Tarefas',
      home: TaskHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//classe TaskHomePage:
//-cria a tela inicial
class TaskHomePage extends StatefulWidget {
  @override
  _TaskHomePageState createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  List<bool> _taskChecked = List.generate(5, (_) => false);

  //-método para mostrar aviso
  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Aviso"),
        content: Text("Você está no App de Notas de Tarefas"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  //-método para construir o cartão
  Widget _buildTaskCard(int index) {
    String timestamp = DateTime.now().toString();
    return Card(
      color: Colors.yellow[700],
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text("Task $timestamp"),
        trailing: Checkbox(
          value: _taskChecked[index],
          onChanged: (value) {
            setState(() {
              _taskChecked[index] = value!;
            });
          },
        ),
      ),
    );
  }

  @override
  //-método de construção da tela
  Widget build(BuildContext context) {
    int uncompletedCount = _taskChecked.where((e) => !e).length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                elevation: 0,
              ),
              child: Text("View Completed Tasks"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Text(
            "You have $uncompletedCount uncompleted tasks",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _taskChecked.length,
              itemBuilder: (context, index) => _buildTaskCard(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showInfoDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}


