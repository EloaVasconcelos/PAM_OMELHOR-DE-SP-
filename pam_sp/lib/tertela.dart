import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Importando para o carrossel funcionar (site: pub dev)
import 'telalogin.dart'; // Importando a tela de login
import 'segtela.dart'; // Importando a tela de login

// ignore: camel_case_types
class tertela extends StatelessWidget {
  const tertela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurantes',
      theme: ThemeData(
      ),
      home: const RestaurantScreen(), // Iniciando a tela de restaurantes
    );
  }
}

// Classe para a tela de restaurantes
class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

//instância da classe 
  @override
  // ignore: library_private_types_in_public_api 
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

//Sugestão 
class _RestaurantScreenState extends State<RestaurantScreen> {
  // Lista de restaurantes
  // ignore: prefer_final_fields
  List<Restaurant> _restaurants = [
    Restaurant(
      name: 'Noah Gastronomia Paulista',
      description: 'Deliciosa Costela',
      location: 'Rua Peixoto Gomide, 707 Cerqueira César, São Paulo',
      image: 'assets/1.png', //Imagem do restaurante 
    ),
    Restaurant(
      name: 'Bar do Alemão Família Steiner',
      description: 'Petiscos e refeições, além de chopes',
      location: ' R. Pio XI, 1221 - Alto da Lapa, SP, 05060-001',
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
            image: AssetImage('assets/fundonovo.png'), //Colocando a imagem de fundo do aplicativo 
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height:80), // Ajustando aondde o titulo vai ficar (colocando mais embaixo)
            const Center(
              child: Column(
                children: [
                  Text(
                  'RESTAURANTES',  //Arrumando o titulo "Restaurantes"
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'O melhor de SP', // Colocando um subtitulo 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45), // Ajustando o carrossel, em relação ao titulo anterior 





            //Começando o Carrossel_slider 
            CarouselSlider(
              items: _restaurants.map((restaurant) {
              return Builder(
              builder: (context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 134, 69, 37).withOpacity(0.9), //Cor de fundo do carrossel/ prototipo 
                      borderRadius: BorderRadius.circular(8.0), //arredondar
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40.0), //Deixando as bordas das imagem um pouco arredondadass
                            child: Image.asset(
                              restaurant.image,
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),

                          //Arrumando os Nomes dos Restaurantes 
                          const SizedBox(height: 16),
                          Text(
                            restaurant.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          //Arrumando a desc
                          const SizedBox(height: 8),
                          Text(
                            restaurant.description,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          
                          //Arrumando a Localização 
                          const SizedBox(height: 8),
                          Text(
                            restaurant.location,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),

                          // Para ir pra tela de login 
                          IconButton(
                            icon: Image.asset(
                              'assets/coracaobranci.png', // ícone de coração  e tambem definindo o tamanho (favoritar)
                              width: 30,
                              height: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TelaLogin(), //Ao clicar no ícone de coração a tela de login
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ); //FECHAR CERTO
              }).toList(), //Alguns parâmetros legais 
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true, //automático ou não 
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
          
                },
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

// classe do que foi/irá ser utilizado 
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
}
