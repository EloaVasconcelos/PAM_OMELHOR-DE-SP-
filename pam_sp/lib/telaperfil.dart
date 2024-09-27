import 'package:flutter/material.dart';
import 'package:pam_sp/favoritos.dart';
import 'package:pam_sp/segtela.dart';
import 'package:pam_sp/telalogin.dart';
import 'package:pam_sp/tertela.dart';


void main() => runApp(const MaterialApp(
  home: TelaPerfil(email: 'example@example.com', telefone: '1234567890', nome: 'User Name'), // Passe o email, telefone e nome como parâmetros corretos
));

class TelaPerfil extends StatelessWidget {
  final String email;
  final String telefone;
  final String nome;

  // ignore: use_super_parameters
  const TelaPerfil({Key? key, required this.email, required this.telefone, required this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 49, 49, 49), 
                  Color.fromARGB(255, 48, 48, 48)
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Perfil",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/perfil.jpg", // Substitua com a imagem correta
                      ),
                      radius: 100.0,
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      nome,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                // Caixa de texto cinza para o email
                Container(
                  padding: const EdgeInsets.symmetric(vertical:20, horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // Fundo cinza
                  ),
                  child: Text(
                    'Email: $email',
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                // Caixa de texto cinza para o telefone
                Container(
                  padding: const EdgeInsets.symmetric(vertical:20, horizontal: 60),
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // Fundo cinza
                  ),
                  child: Text(
                    'Telefone: $telefone',
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Favoritos()),
              );
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
      bottomNavigationBar: BottomAppBar(height: 85,
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
                  style: TextStyle(color: Colors.white),
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
                  style: TextStyle(color: Colors.white),
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
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
