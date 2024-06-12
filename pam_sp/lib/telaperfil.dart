import 'package:flutter/material.dart';
import 'package:pam_sp/telalogin.dart';

class TelaPerfil extends StatelessWidget {
  final String email;

  const TelaPerfil({required this.email, Key? key}) : super(key: key);

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
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/perfil.png'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(height: 20),
              Text(
                'Email: $email',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Ação para o botão "Meus Favoritos"
                  // Por exemplo, você pode navegar para a tela de favoritos
                  Navigator.pushNamed(context, '/favoritos');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8B4513),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'MEUS FAVORITOS',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
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
  runApp(const MaterialApp(
    home: TelaLogin(),
  ));
}