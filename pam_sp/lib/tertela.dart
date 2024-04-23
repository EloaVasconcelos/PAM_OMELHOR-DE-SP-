import 'package:flutter/material.dart';

// ignore: camel_case_types
class tertela extends StatelessWidget {
  const tertela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/foto.png'), // Imagem de fundo
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Texto "Comidas Típicas" no topo da tela
          const Positioned(
            top: 50, // Distância do topo
            left: 20, // Distância da esquerda
            child: Text(
              'COMIDAS TÍPICAS', // Texto a ser exibido
              style: TextStyle(
                fontSize: 24, // Tamanho da fonte
                fontWeight: FontWeight.bold, // Peso da fonte
                color: Colors.white, // Cor do texto
              ),
            ),
          ),
          const Center(
            child: CardWidget(),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5), // Cor do card com transparência
        borderRadius: BorderRadius.circular(8.0), // Borda arredondada do card
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Borda arredondada da imagem
            child: Image.asset(
              'assets/feijoada.jpg', // Caminho da imagem da feijoada
              width: 200, // Largura da imagem
              height: 200, // Altura da imagem
              fit: BoxFit.cover, // Ajuste da imagem para cobrir o espaço disponível
            ),
          ),
          const SizedBox(height: 16), // Espaçamento entre a imagem e o texto
          const Text(
            'FEIJOADA', // Texto "Feijoada"
            style: TextStyle(
              fontSize: 35, // Tamanho da fonte
              fontWeight: FontWeight.bold, // Peso da fonte
            ),
          ),
        ],
      ),
    );
  }
}
