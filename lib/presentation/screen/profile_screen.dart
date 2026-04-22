import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Función de edición próximamente')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Foto de perfil
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 60, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Santiago Jimenez',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Miembro desde 2024',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            // Información del usuario
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text('Correo electrónico'),
                      subtitle: Text('santiagojimenez@gmail.com'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.blue),
                      title: Text('Teléfono'),
                      subtitle: Text('+57 333 2526342'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.calendar_today, color: Colors.blue),
                      title: Text('Fecha de nacimiento'),
                      subtitle: Text('01/03/2006'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.location_on, color: Colors.blue),
                      title: Text('Dirección'),
                      subtitle: Text('Barrio 13 de junio'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 30),
                  // Estadísticas del contador
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Estadísticas',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.touch_app,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Total Clicks',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Días activo',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
