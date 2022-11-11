import 'package:flutter/material.dart';

void main() {
  runApp(const TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: const Text("Good Luck"),
        ),

        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.blue,
            ),

            Container(
              color: Colors.blue[100],
              margin: const EdgeInsets.all(10),
            ),

            Positioned(
              bottom: 100,
              child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/images/flutter_logo.png",
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height:100),

                const Text(
                  "Нажатие кнопки",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Montserrat",
                  ),
                ),

                Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 300,
                    height: 50,
                    color: Colors.blue[800],
                  child:
                  ElevatedButton(
                    onPressed: (){print("Клац!");},
                    child: const Text("PUSH ME"),
                  ),
                ),

              ],
            ),
            ),
          ],
        ),

      ),
    );
  }
}
