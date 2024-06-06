import 'package:flutter/material.dart';
import 'package:pam_sp/tertela.dart';

// ignore: camel_case_types
class segtela extends StatelessWidget {
  // ignore: use_super_parameters
  const segtela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O Melhor de SP', // Título na aba
      home: Scaffold(
        body: Container( // Criando um Container
          decoration: const BoxDecoration( // Adicionando a imagem de fundo no container
            image: DecorationImage(
              image: AssetImage('assets/fundonovo.png'), // Caminho da imagem de fundo
              fit: BoxFit.cover, // Código para a imagem cobrir a tela inteira
            ),
          ),
          child: const Column( // Coluna para tudo ficar na vertical
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 75), // Espaçamento entre os cartões e o título
              Padding(
                // Espaçamento
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                // Colocando o título da página "O Melhor de SP"
                child: Text(
                  'MENU',
                  textAlign: TextAlign.center,
                  style: TextStyle( // Decorando o texto
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Definindo a cor
                  ),
                ),
              ),
              Padding(
                // Espaçamento
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                // Colocando o título da página "O Melhor de SP"
                child: Text(
                  'O Melhor de SP',
                  textAlign: TextAlign.center,
                  style: TextStyle( // Decorando o texto
                    fontSize: 24,
                    color: Colors.white, // Definindo a cor
                  ),
                ),
              ),
              Expanded( // Expandir o espaço
                child: Center(
                  // Alinha o conteúdo ao centro
                  child: CardList(), // Exibir os cards criados
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Definindo a classe para a criação dos Cards
class CardList extends StatelessWidget {
  // ignore: use_super_parameters
  const CardList({Key? key}) : super(key: key); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Column(
      // Coluna que organiza os cartões verticalmente
      mainAxisAlignment: MainAxisAlignment.center,
      // Alinhamento principal definido como centralizado
      children: [
        // Card "RESTAURANTES" com funcionalidade de navegação
        GestureDetector(
          onTap: () {
            // Navegar para a próxima tela ao clicar no card "RESTAURANTES"
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const tertela()), // ao clicar irá passar para a próxima tela
            );
          },
          
          child: const CardWidget(
            // Primeiro card com o título "RESTAURANTES"
            title: 'RESTAURANTES', // Título principal
            subtitle: 'Melhores Restaurantes de SP',
            color: Color(0xFF292929), // Definindo a cor do card
            imagePath: 'assets/image1.png', // Caminho da imagem do ícone
          ),
        ),
        const SizedBox(height: 16), // Espaçamento entre os cartões (Cards)
        // Segundo cartão (card) "PRATOS TÍPICOS"
        const CardWidget(
          title: 'PRATOS TÍPICOS',
          subtitle: 'Melhores Pratos da SP',
          color: Color(0xFF292929), // Definindo cor
          imagePath: 'assets/image2.png', // Caminho da imagem do ícone 2
        ),
      ],
    );
  }
}

// Define a classe para a criação dos Cards
class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final String imagePath;

  // Construtor da classe
  // ignore: use_super_parameters
  const CardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.imagePath,
  }) : super(key: key);

  // Definindo propriedades de alguns elementos dos cards
  @override
  Widget build(BuildContext context) {
    return Card(
      // Widget do card
      elevation: 4, // Elevação do cartão
      color: color, // Cor de fundo do cartão
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Definindo a borda arredondada do cartão
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Espaçamento interno do cartão
        child: Row(
          // Organiza os elementos horizontalmente
          crossAxisAlignment: CrossAxisAlignment.start,
          // Alinhamento - início
          children: [
            Image.asset(
              imagePath, // Caminho da imagem
              width: 100, // Largura da imagem
              height: 100, // Altura da imagem
              fit: BoxFit.cover, // Ajuste da imagem dentro do espaço
            ),
            const SizedBox(width: 16), // Espaçamento entre a imagem e o texto
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title, // Título do cartão e estilizar o conteúdo
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 8), // Espaçamento entre os textos dentro do card
                Text(
                  subtitle, // Subtítulo dentro do card
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 255, 255, 255),
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

