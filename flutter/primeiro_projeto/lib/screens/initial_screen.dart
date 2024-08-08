import 'package:flutter/material.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blueAccent,
        title: const Text('Tarefas', style: TextStyle(color: Colors.white)),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Task(
                'Aprender Flutter',
                'assets/images/flutter.png',
                3),
            Task(
                'Andar de Bike',
                'assets/images/bike.jpeg',
                2),
            Task(
                'Meditar',
                'assets/images/meditar.jpeg',
                5),
            Task(
                'Ler',
                'assets/images/ler.jpg',
                4),
            Task(
                'Jogar',
                'assets/images/flutter.png',
                1),
            SizedBox(height: 60),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(178, 0, 251, 255),
        child: const Icon(Icons.remove_red_eye),
        onPressed: () => {
          setState(() {
            opacity = !opacity;
          }),
        },
      ),
    );
  }
}
