import 'package:flutter/material.dart';
import 'package:pam_sp/telacadastrar.dart';
import 'package:pam_sp/telaperfil.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login - O Melhor de SP'),
      ),
      body: Stack(
        children: [
          // Imagem de fundo
          Image.asset(
            'assets/fundonovo.png', // Caminho da imagem de fundo
            fit: BoxFit.cover, // Para cobrir toda a tela
            width: double.infinity, // Largura máxima da tela
            height: double.infinity, // Altura máxima da tela
          ),
          // Container centralizado com os campos de login
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 350, // Largura do container
              decoration: BoxDecoration(
                color: Colors.white, // Cor de fundo do container
                borderRadius: BorderRadius.circular(20), // Cantos arredondados
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Sombra preta suave
                    blurRadius: 10, // Desfocagem da sombra
                    offset: Offset(0, 4), // Deslocamento da sombra
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Seja Bem-Vindo!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Campo de texto para Email
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Campo de texto para Senha
                  TextField(
                    controller: _senhaController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Botão "Logar"
                  ElevatedButton(
                    onPressed: () {
                      // Envia apenas o email para a próxima tela
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaPerfil(email: _emailController.text)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8B4513), // Cor marrom
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Center(
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
                  // Botão "Cadastrar-se"
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navega para a tela de cadastro ao clicar em "Cadastra-se"
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TelaCadastro()),
                        );
                      },
                      child: Text(
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

class TelaPerfil extends StatelessWidget {
  final String email;

  const TelaPerfil({Key key, @required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 64, 63, 63),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Email: $email',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const TelaLogin(),
  ));
}
