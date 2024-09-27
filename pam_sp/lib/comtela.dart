import 'package:flutter/material.dart';
import 'package:pam_sp/favoritos.dart';
import 'package:pam_sp/segtela.dart';
import 'package:pam_sp/telalogin.dart';
import 'prato.dart'; // Importando o modelo de Prato

// Gerenciamento de estado global para os favoritos
Set<Prato> favoritosGlobais = {};

// ignore: camel_case_types
class comtela extends StatefulWidget {
  const comtela({super.key});

  @override
  State<comtela> createState() => _comtelaState();
}

// ignore: camel_case_types
class _comtelaState extends State<comtela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundonovo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: const Text(
                'Pratos Típicos',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  mainAxisExtent: 250,
                ),
                padding: const EdgeInsets.all(10.0),
                itemCount: 12,
                itemBuilder: (context, index) {
                  final List<String> images = [
                    'assets/coxinha.jpg',
                    'assets/feijoada.jpg',
                    'assets/pastel1.jpg',
                    'assets/pao.jpg',
                    'assets/espetinho.jpg',
                    'assets/mortadela.jpg',
                    'assets/brigadeiro.jpg',
                    'assets/bifeacavalo.jpg',
                    'assets/feijao.jpg',
                    'assets/misto.jpeg',
                    'assets/pudim.jpg',
                    'assets/hambur.jpg',
                  ];

                  final List<String> names = [
                    'Coxinha',
                    'Feijoada',
                    'Pastel',
                    'Pão de Chapa',
                    'Espetinho',
                    'Mortadela',
                    'Brigadeiro',
                    'Bife a cavalo',
                    'Feijão',
                    'Misto Quente',
                    'Pudim',
                    'Hamburguer',
                  ];

                  // Lista de preços para cada prato
                  final List<String> prices = [
                    'R\$10.00',
                    'R\$25.00',
                    'R\$8.00',
                    'R\$5.00',
                    'R\$6.00',
                    'R\$30.00',
                    'R\$12.00',
                    'R\$20.00',
                    'R\$22.00',
                    'R\$7.00',
                    'R\$15.00',
                    'R\$18.00',
                  ];

                  final String imagePath = images[index % images.length];
                  final String name = names[index % names.length];
                  final String price = prices[index % prices.length];


                  return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Card(
                        shadowColor: Colors.black,
                        color: const Color.fromARGB(255, 41, 41, 41),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(imagePath),
                                radius: 60,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              // Exibindo o preço ao invés do ícone de favoritos
                              Text(
                                'Preço: $price',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar( height: 85,
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
                      MaterialPageRoute(builder: (context) => Favoritos()),
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
