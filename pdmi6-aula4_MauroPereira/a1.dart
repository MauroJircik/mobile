/*    IFSP - Campus Bragança Paulista

        Prog. Dispositivos Móveis

   Mauro Sérgio JAMRL Pereira BP3032116

          Aula 4 - Atividade 1
a1 = main
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
      title: 'Flutter Form Demo',
      home: FormScreen(),
    );
  }
}

//classe FormScreen:
//-cria a tela do formulário
class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

//-estado do formulário
class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  //-validar e enviar o formulário
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final phone = _phoneController.text;
      final dob = _dobController.text;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Name: $name\nPhone: $phone\nDOB: $dob'),
        ),
      );
    }
  }

  //-campos de texto do formulário
  Widget _buildTextField({required IconData icon, required String label, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                border: UnderlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter $label';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  //-tela do formulário
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Form Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildTextField(icon: Icons.person, label: 'Name', controller: _nameController),
              _buildTextField(icon: Icons.phone, label: 'Phone', controller: _phoneController),
              _buildTextField(icon: Icons.calendar_today, label: 'Dob', controller: _dobController),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, // cor do botão como na imagem
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


