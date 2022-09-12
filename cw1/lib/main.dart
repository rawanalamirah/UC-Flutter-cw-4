import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Center(
                    child: Image.asset(
                      'asset/fav_animal.jpg',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Text(
                    'Type: Camels',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Name: Llama',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Age: 8 yrs old',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Gender: Female',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
