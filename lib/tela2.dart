import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/seta.png',
                width: 50,
              ),
              Image.asset(
                'assets/menu.png',
                width: 50,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black26,
              height: 100,
              // ignore: prefer_const_constructors
              child: Row(
                children: [Text('Bem vindo de volta, Vitor!')],
              ),
            ),
            Container(
              color: Colors.black26,
              height: 100,
              child: Row(
                children: [Text('Dispositivos e configurações')],
              ),
            ),
            Container(
              color: Colors.white,
              height: 75,
              child: Row(
                children: [
                  Container(
                    color: Colors.black,
                    width: 72,
                    height: 75,
                    child: Row(
                      children: [
                        Text(
                          "Wi-fi",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    width: 72,
                    height: 75,
                    child: Row(
                      children: [
                        Text(
                          "Temp",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    width: 72,
                    height: 75,
                    child: Row(
                      children: [
                        Text(
                          "Sound",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                children: [
                  Container(
                    color: Colors.redAccent,
                    height: 75,
                    child: Row(
                      children: [
                        Text(
                          "Light",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 75,
                    child: Row(
                      children: [
                        Text(
                          "TV",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 75,
                    child: Row(
                      children: [
                        Text(
                          'Add Dispostivo',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              'Rooms',
              style: TextStyle(color: Colors.green),
            ),
            Container(
              color: Colors.black26,
              height: 80,
              child: Row(
                children: [
                  Text("Quarto"),
                  Icon(Icons.arrow_forward_ios),
                  Icon(
                    Icons.bed,
                    size: 50,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black26,
              height: 80,
              child: Row(
                children: [
                  Text("Cozinha"),
                  Icon(Icons.arrow_forward_ios),
                  Image.asset(
                    'assets/pia.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black26,
              height: 80,
              child: Row(
                children: [Text('Banheiro'),
                  Icon(Icons.arrow_forward_ios),
                  Icon(Icons.shower,size: 50,)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
