// Tela 3 - Tela que se adequa ao uso de formulário

// [RC1] Especifique uma estrutura de pastas (arquitetura) para o projeto do aplicativo.
// [RC2] Utilize Rotas e Navegação, aplicando a técnica com MaterialApp.
// [RC3] Passe dados entre as páginas utilizando as estratégias de Rotas e Navegação.
// [RC4] Defina pelo menos um formulário no seu aplicativo.
// [RC5] Utilize a classe LayoutBuilder ou MediaQuery para tornar o aplicativo responsivo à rotação de tela.

import 'package:flutter/material.dart';

// Declaração de um widget com estado para exibir o formulário
class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

// Classe FormScreen
class _FormScreenState extends State<FormScreen> {
  // Controladores de texto para os campos do formulário
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // Variável de controle para mostrar/ocultar senha
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // - responsividade da tela:
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 600;

        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            // Permite rolagem quando o teclado está aberto
            padding: EdgeInsets.symmetric(
              // Define o espaçamento com base na largura da tela
              horizontal: isWide ? 48 : 24,
              vertical: 48,
            ),
            child: Form(
              // Formulário com validação:
              key: _formKey,
              child: Column(
                children: [
                  // - logo do aplicativo
                  Image.asset(
                    'assets/images/carrotp.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(height: 20),
                  // - características do formulário:
                  //    - título do formulário
                  const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  //   - descrição do formulário
                  const Text(
                    'Enter your credentials to continue',
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 24),
                  // - campo de texto para o nome de usuário:
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(labelText: 'Username'),
                    //  - validação do nome de usuário
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'Required field'
                                : null,
                  ),
                  const SizedBox(height: 16),
                  // - campo de texto para o email:
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.check, color: Colors.green),
                    ),
                    //  - validação do email
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required field';
                      }
                      final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                      if (!regex.hasMatch(value)) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  // - campo de texto para a senha:
                  TextFormField(
                    controller: _passwordController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          // - ícone de mostrar/ocultar senha
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed:
                            () => setState(() {
                              _passwordVisible = !_passwordVisible;
                            }),
                      ),
                    ),
                    //  - validação da senha
                    validator:
                        (value) =>
                            value == null || value.length < 6
                                ? 'Min. 6 characters'
                                : null,
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    // - texto com links para Termos de Serviço e Política de Privacidade:
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'By continuing you agree to our ',
                      style: TextStyle(color: Colors.black54),
                      children: [
                        // - link para os Termos de Serviço
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(color: Color(0xFF53B175)),
                        ),
                        TextSpan(text: ' and '),
                        // - link para a Política de Privacidade
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(color: Color(0xFF53B175)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    // - botão de enviar
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53B175),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      // - ao pressionar o botão:
                      onPressed: () {
                        // - validação do formulário
                        if (_formKey.currentState!.validate()) {
                          // - rota para a tela de grid
                          Navigator.pushNamed(
                            context,
                            '/grid',
                            arguments: {
                              'username': _usernameController.text,
                              'email': _emailController.text,
                            },
                          );
                        }
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    // - link para a tela de login:
                    onTap: () {
                      // - rota para a tela de login
                      Navigator.pop(context);
                    },
                    // - texto para o link
                    child: const Text.rich(
                      TextSpan(
                        text: 'Already have an account? ',
                        children: [
                          TextSpan(
                            text: 'Signup',
                            style: TextStyle(color: Color(0xFF53B175)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
