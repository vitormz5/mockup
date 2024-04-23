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
              color: Colors.white,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Quartos',style: TextStyle(color: Colors.green,fontSize: 22),)],
              ),
            ),
            Container(
              color: Colors.black,
              height: 75,
              width: 350,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Quarto',
                        style: TextStyle(color: Colors.white,fontSize: 22),
                      ),
                      Icon(
                        Icons.expand_more,size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.bed,
                    color: Colors.white,
                    size: 80,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black26,
              height: 70,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.light,
                        size: 40,
                      ),
                      Text('Lâmpada 1'),
                    ],
                  ),
                  Icon(
                    Icons.toggle_on,
                    size: 50,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black26,
              height: 70,
              width: 350,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: LinearProgressIndicator(
                      color: Colors.white,
                      value: 0.5,
                    ),
                    width: 200,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              width: 350,
              height: 75,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.water_drop),
                      Text('Humidade'),
                    ],
                  ),
                  Text('60%'),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              width: 350,
              height: 75,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.water_drop),
                      Text('Temperatura'),
                    ],
                  ),
                  Text('+23º'),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              width: 350,
              height: 75,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.water_drop),
                      Text('TV'),
                    ],
                  ),
                  Icon(Icons.toggle_off, size: 50,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
