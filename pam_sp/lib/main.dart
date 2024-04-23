
import 'package:flutter/material.dart';
import 'package:pam_sp/segtela.dart'; 

// Criando a calsse MainApp 
class MainApp extends StatelessWidget {
  const MainApp({super.key}); // é o construtor da Main


// Começando o Código da interface 
  @override
  Widget build(BuildContext context) {
         return const MaterialApp(   // Retornado o MaterialApp (seguestão )
         title: 'O Melhor de SP',  // Adicionando o Nome do Aplicativo na aba do navegador 
         home: Scaffold(
         body: Stack(
         children: [ // criando para chamar os métodos 
            // Widget de fundo
            BackgroundApp(), // Chamando o metodo para exibir a imagem (BackgroundAPP)
            IconeNext(),   //  Chamando o metodo para exibir a o ícone (IconeNEXT)

            // Widget para colocar um texto na tela (Text)
   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
             child: Text('O MELHOR DE SP', // Texto que irá aparecer - Nome do App 
             style: TextStyle( //Estilizando o texto 
             color: Color.fromARGB(255, 255, 255, 255), // Definindo a cor 
             fontSize: 35,  // Definindo o Tamanho
             fontWeight: FontWeight.bold, // Fonte em negrito 
             fontFamily: 'Arial', // Escolha da fonte 

           ),
        ),
     ),

                  
                SizedBox(height: 15), // Colocando espeço entre as 2 frases  (Espaçamento) 

               // Acresentando mais uma texto para a implementação de outra frase 
                Center(
                  child: Text(
                    'A melhor culinária especialmente para você!',
                    style: TextStyle( //Estilizando o texto 
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18, // Definindo o Tamanho
                      fontFamily: 'Arial', // Escolha da fonte 
                    ),
                  ),
                ),

           
              ],

              
              // Todos os fechamentos - Não esquecer nenhum 

            ),
          ],
        ),
      ),
    );
  }
}


// Criando a class para exibir e adicionar características para a imagem 
class BackgroundApp extends StatelessWidget {
  const BackgroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/foto.png',  // Caminho da Imagem
      fit: BoxFit.cover,  // Para a imagem ficar fixa 
      width: double.infinity,  // imagem até o maximo da tela 
      height: double.infinity, // imagem até o maximo da tela 
    );
  }
}


// Criando a class para exibir e adicionar características para o ícone 
// Adiconando no Ícone a ação de ir para a próxima página
class IconeNext extends StatelessWidget {
  const IconeNext ({super.key});
 @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 190, // Distância do ícone em relação à borda inferior da tela
      right: 210, // Distância do ícone em relação à borda direita da tela
      child: Transform.scale(
        scale: 0.70, //. faz com que o icone diminua de acordo com a porcentagem 
        child: IconButton(
          iconSize: 24, // Tamanho do ícone
          icon: Image.asset('assets/seta.png'), //Caminho da Imagem do ícone
          onPressed: () {  // Quando Clicar 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const segtela()), // Ir para a seguinte página
            );
          },
        ),
      ),
    );
  }
}



void main() {
  runApp(const MainApp());
}
