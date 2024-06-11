import 'package:flutter/material.dart';
import 'package:pam_sp/telalogin.dart';
import 'telalogin.dart'; // Importar a TelaLogin

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro - O Melhor de SP',
      home: Scaffold(
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
                      offset: Offset(0, 4), // Deslocamento da sombra
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cadastro',
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
                          MaterialPageRoute(builder: (context) => const TelaCadastro()),
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
                            MaterialPageRoute(builder: (context) => const TelaCadastro()),
                          );
                        },
                        child: Text(
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
      ),
    );
  }
}
