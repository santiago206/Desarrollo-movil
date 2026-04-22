import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'profile_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int counter = 0;
  String userName = "Santiago Jimenez";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp'),
        actions: [
          IconButton(
            onPressed: () {
              // Cerrar sesión y volver al login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            icon: Icon(Icons.logout_rounded),
            tooltip: 'Cerrar Sesión',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'santiagojimenez@gmail.com',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
            // Item: Inicio
            ListTile(
              title: Text('Inicio'),
              subtitle: Text('Pantalla principal del contador'),
              leading: Icon(Icons.home_outlined),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Item: Perfil
            ListTile(
              title: Text('Mi Perfil'),
              subtitle: Text('Ver y editar mi información'),
              leading: Icon(Icons.person_outline),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            Divider(),
            // Cerrar Sesión
            ListTile(
              title: Text('Cerrar Sesión'),
              leading: Icon(Icons.logout, color: Colors.red),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contador grande
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            // Texto "Click" o "Clicks"
            Text(
              'Click${counter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Mensaje de bienvenida
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                counter == 0
                    ? 'Presiona los botones para comenzar'
                    : '¡Sigue así! Llevas $counter click${counter == 1 ? '' : 's'}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Botón Reset
          FloatingActionButton(
            elevation: 10,
            heroTag: 'reset',
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: Icon(Icons.refresh_outlined),
            backgroundColor: Colors.orange,
            tooltip: 'Resetear contador',
          ),
          SizedBox(height: 10),
          // Botón Disminuir
          FloatingActionButton(
            elevation: 10,
            heroTag: 'decrement',
            onPressed: () {
              setState(() {
                if (counter > 0) counter--;
              });
            },
            child: Icon(Icons.exposure_minus_1_rounded),
            backgroundColor: Colors.red,
            tooltip: 'Disminuir',
          ),
          SizedBox(height: 10),
          // Botón Aumentar
          FloatingActionButton(
            elevation: 10,
            heroTag: 'increment',
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.plus_one_outlined),
            backgroundColor: Colors.green,
            tooltip: 'Aumentar',
          ),
        ],
      ),
    );
  }
}
