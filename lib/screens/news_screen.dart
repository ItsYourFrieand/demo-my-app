import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добро пожаловать, name!'),
        backgroundColor: Colors.blueGrey[800],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Новости', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,),),
            const SizedBox(height: 50),
            const Text('Бывает и так у нас в обществе где множество людей афишируют свои события из жизни, ничего не подозревая и не осознавая кто они'),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("Назад", style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
