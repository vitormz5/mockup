import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5, // Ajusta a altura da imagem para cobrir metade da tela
                child: Image.asset(
                  'assets/salaestar2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: LoginBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  final double buttonWidth = 250.0;
  final double buttonHeight = 55.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 60.0, // Aumenta o tamanho do avatar
            backgroundImage: AssetImage('assets/foto.png'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Bem-vindo!',
            style: TextStyle(
              fontSize: 36.0, // Aumenta o tamanho do texto
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 250.0), // Ajustei o espaçamento entre o texto e os botões
          SizedBox(
            width: buttonWidth,
            height: buttonHeight,
            child: ElevatedButton(
              onPressed: () {
                // Adicione a função de login aqui
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ),
              child: Text('Login', style: TextStyle(fontSize: 24)),
            ),
          ),
          SizedBox(height: 20.0), // Ajustei o espaçamento entre os botões
          SizedBox(
            width: buttonWidth,
            height: buttonHeight,
            child: ElevatedButton(
              onPressed: () {
                // Adicione a função de registro aqui
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ),
              child: Text('Registrar', style: TextStyle(fontSize: 24)),
            ),
          ),
        ],
      ),
    );
  }
}
