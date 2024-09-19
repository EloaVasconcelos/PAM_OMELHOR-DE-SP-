import 'package:flutter/material.dart';
import 'package:pam_sp/segtela.dart';
import 'package:pam_sp/telalogin.dart';
import 'tertela.dart'; // Importando tertela.dart para acessar os favoritos globais

class Favoritos extends StatefulWidget {
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEUS FAVORITOS'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: favoritosGlobais.isEmpty
          ? const Center(
              child: Text(
                'Nenhum favorito adicionado.',
                style: TextStyle(fontSize: 18.0),
              ),
            )
          : ListView.builder(
              itemCount: favoritosGlobais.length,
              itemBuilder: (context, index) {
                // Verifique se o índice é válido antes de acessar a lista
                if (index >= favoritosGlobais.length) {
                  return Container(); // Retorna um widget vazio se o índice estiver fora do intervalo
                }
                
                final restaurant = favoritosGlobais.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4.0,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            restaurant.image,
                            width: 80.0,
                            height: 80.0,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurant.name,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                restaurant.location,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              // Função para remover o item dos favoritos
                              favoritosGlobais.remove(restaurant);
                            });
                          },
                          icon: const Icon(Icons.delete, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
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
