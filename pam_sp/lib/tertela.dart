import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'telalogin.dart';
import 'favoritos.dart'; // Importar o favoritos.dart para usar o estado global
import 'segtela.dart';

// Gerenciamento de estado global para os favoritos
Set<Restaurant> favoritosGlobais = {};

class tertela extends StatelessWidget {
  const tertela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurantes',
      theme: ThemeData(),
      home: const RestaurantScreen(),
    );
  }
}

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List<Restaurant> _restaurants = [
    Restaurant(
      name: 'Noah Gastronomia Paulista',
      description: 'Deliciosa Costela',
      location: 'Rua Peixoto Gomide, 707 Cerqueira César, São Paulo',
      image: 'assets/1.png',
    ),
    Restaurant(
      name: 'Bar do Alemão Família Steiner',
      description: 'Petiscos e refeições, além de chopes',
      location: 'R. Pio XI, 1221 - Alto da Lapa, SP, 05060-001',
      image: 'assets/3.png',
    ),
    Restaurant(
      name: 'Restaurante Santa fé O Cupim',
      description: 'Costela, maminha, fraldinha e picanha.',
      location: 'Av. Pompéia, 600 - Pompeia, SP, 05022-000',
      image: 'assets/2.png',
    ),
    Restaurant(
      name: 'Le Bife',
      description: 'Os melhores Bifes de SP',
      location: 'Rua Pedroso Alvarenga, 1088, Itaim Bibi',
      image: 'assets/4.png',
    ),
  ];

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
            const SizedBox(height: 80),
            const Center(
              child: Column(
                children: [
                  Text(
                    'RESTAURANTES',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'O melhor de SP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45),
            CarouselSlider(
              items: _restaurants.map((restaurant) {
                bool isFavorite = favoritosGlobais.contains(restaurant);
                return Builder(
                  builder: (context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 134, 69, 37)
                            .withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset(
                              restaurant.image,
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            restaurant.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            restaurant.description,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            restaurant.location,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                if (isFavorite) {
                                  favoritosGlobais.remove(restaurant);
                                } else {
                                  favoritosGlobais.add(restaurant);
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {},
              ),
            ),
          ],
        ),
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
                      MaterialPageRoute(builder: (context) =>  Favoritos()),
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

class Restaurant {
  final String name;
  final String description;
  final String location;
  final String image;

  Restaurant({
    required this.name,
    required this.description,
    required this.location,
    required this.image,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Restaurant &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
