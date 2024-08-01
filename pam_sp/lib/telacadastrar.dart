import 'package:flutter/material.dart';
import 'package:pam_sp/telalogin.dart';
import 'segtela.dart'; // Importando a tela de login
import 'tertela.dart'; // Importando a tela de login

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

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
          // Container centralizado com os campos de cadastro
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
                    offset: const Offset(0, 4), // Deslocamento da sombra
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cadastro',
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
                  // Campo de texto para Email
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
                  // Campo de texto para Telefone
                  TextField(
                    controller: telefoneController,
                    decoration: InputDecoration(
                      labelText: 'Telefone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Campo de texto para Senha
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
                  // Botão "Cadastrar"
                  ElevatedButton(
                    onPressed: () {
                      // Ação para o botão "Cadastrar"
                      // Aqui você pode adicionar lógica para o cadastro, e após sucesso, navegar para a tela de login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TelaLogin()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8B4513), // Cor marrom
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Center(
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Botão "Logar-se"
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navega para a tela de login ao clicar em "Logar-se"
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TelaLogin()),
                        );
                      },
                      child: const Text(
                        'Logar-se',
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
       bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 58, 58, 58),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const segtela()),
                      );
                    },
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const tertela()),
                      );
                    },
                  ),
                  const Text(
                    'Favoritos',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.person, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TelaLogin()),
                      );
                    },
                  ),
                  const Text(
                    'Perfil',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TelaCadastro(),
  ));
}
