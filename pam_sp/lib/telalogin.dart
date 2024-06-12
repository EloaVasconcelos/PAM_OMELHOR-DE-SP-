import 'package:flutter/material.dart';
import 'package:pam_sp/telacadastrar.dart';
import 'package:pam_sp/telaperfil.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  void _login() {
    String email = emailController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaPerfil(email: email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Image.asset(
            'assets/fundonovo.png', // Caminho da imagem de fundo
            fit: BoxFit.cover, // Para cobrir toda a tela
            width: double.infinity, // Largura máxima da tela
            height: double.infinity, // Altura máxima da tela
          ),
          // Centered container with login fields
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 350, // Width of the container
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: BorderRadius.circular(20), // Rounded corners
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Seja Bem-Vindo!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email text field
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Password text field
                  TextField(
                    controller: senhaController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // "Logar" button
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8B4513), // Brown color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Center(
                      child: Text(
                        'Logar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // "Cadastrar-se" button
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the registration screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TelaCadastro()),
                        );
                      },
                      child: const Text(
                        'Cadastra-se',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
