import 'package:flutter/material.dart';
import 'package:pam_sp/tertela.dart'; 


class segtela extends StatelessWidget {
  const segtela({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O Melhor de SP', // Titulo na aba 
      
      home: Scaffold(
        // Define a estrutura básica da tela
        body: Container(
          // Container que contém toda a tela
          decoration: const BoxDecoration(
            // Decoração do container com uma imagem de fundo
            image: DecorationImage(
              image: AssetImage('assets/foto.png'), // Imagem de fundo
              fit: BoxFit.cover, // Ajuste da imagem para cobrir a tela
            ),
          ),
          child: const Column(
            // Coluna que organiza os elementos verticalmente
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // Alinhamento cruzado definido como esticado
            children: [
              Padding(
                // Espaçamento interno ao redor do título
                padding: EdgeInsets.all(16.0),
                // Define um texto "OPÇÕES" com estilo específico
                child: Text(
                  'OPÇÕES',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                // Widget expandido que abrange o restante do espaço disponível
                child: Center(
                  // Alinha o conteúdo ao centro
                  child: CardList(), // Exibe a lista de cartões
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Define a classe para a lista de cartões
class CardList extends StatelessWidget {
  const CardList({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Column(
      // Coluna que organiza os cartões verticalmente
      mainAxisAlignment: MainAxisAlignment.center,
      // Alinhamento principal definido como centralizado
      children: [
        const CardWidget(
          // Cartão do tipo "RESTAURANTES"
          title: 'RESTAURANTES',
          subtitle: 'Veja os melhores restaurantes da região de SP',
          color: Color.fromARGB(255, 122, 66, 124),
          imagePath: 'assets/image1.png', // Imagem do cartão
        ),
        const SizedBox(height: 16), // Espaçamento entre os cartões
        // Segundo cartão com função de ir para a próxima tela
        GestureDetector(
          onTap: () {
            // Navegar para a próxima tela ao clicar no segundo cartão
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const tertela()),
            );
          },
          child: const CardWidget(
            // Cartão do tipo "PRATOS TÍPICOS"
            title: 'PRATOS TÍPICOS',
            subtitle: 'Saboreie os melhores pratos da região',
            color: Color.fromARGB(255, 122, 66, 124),
            imagePath: 'assets/image2.png', // Imagem do cartão
          ),
        ),
      ],
    );
  }
}

// Define a classe para o cartão
class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final String imagePath;

  const CardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.imagePath,
  }); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Card(
      // Widget de cartão
      elevation: 4, // Elevação do cartão
      color: color, // Cor de fundo do cartão
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Borda arredondada do cartão
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Espaçamento interno do cartão
        child: Row(
          // Linha que organiza os elementos horizontalmente
          crossAxisAlignment: CrossAxisAlignment.start,
          // Alinhamento cruzado definido como início
          children: [
            SizedBox(
              // Caixa com tamanho fixo para a imagem
              width: 100,
              height: 100,
              child: CircleAvatar(
                // Imagem redonda
                backgroundImage: AssetImage(imagePath), // Imagem do avatar
              ),
            ),
            const SizedBox(width: 16), // Espaçamento entre a imagem e o texto
            Column(
              // Coluna que organiza os textos verticalmente
              crossAxisAlignment: CrossAxisAlignment.start,
              // Alinhamento cruzado definido como início
              children: [
                Text(
                  title, // Título do cartão
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8), // Espaçamento entre os textos
                Text(
                  subtitle, // Subtítulo do cartão
                  style: const TextStyle(
                    fontSize: 16,
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
