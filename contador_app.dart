import 'package:flutter/material.dart';

void main() {
  runApp(const ContadorApp());
}

class ContadorApp extends StatelessWidget {
  const ContadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contador de clicks",
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar() {
    setState(() => contador++);
  }

  void decrementar() {
    if (contador == 0) return;
    setState(() => contador--);
  }

  void reiniciar() {
    setState(() => contador = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'Click${contador == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _CustomButton(icon: Icons.add, onPressed: incrementar),
          const SizedBox(height: 10),
          _CustomButton(icon: Icons.remove, onPressed: decrementar),
          const SizedBox(height: 10),
          _CustomButton(icon: Icons.refresh, onPressed: reiniciar),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: onPressed,
      child: Icon(icon, color: Colors.white),
    );
  }
}
