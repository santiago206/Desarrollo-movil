void main() {
  Persona persona1 = Persona(
    name_persona: 'Santiago',
    age_persona: 19,
    city_persona: 'Cartagena',
  );

  print(persona1);

  Persona persona2 = Persona.fromJson({
    'nombre': 'Adolfo',
    'edad': 20,
    'ciudad': 'Barranquilla',
  });

  print(persona2);

  print(saludar());
  print(sumar(10, 20));

  print(saludo2());
  print(sumar2(5, 15));
}

class Persona {
  String name_persona;
  int age_persona;
  String city_persona;

  Persona({
    required this.name_persona,
    required this.age_persona,
    required this.city_persona,
  });

  Persona.fromJson(Map<String, dynamic> json)
    : name_persona = json['nombre'] ?? 'Sin nombre',
      age_persona = json['edad'] ?? 0,
      city_persona = json['ciudad'] ?? 'Sin ciudad';

  String toString() {
    return 'Persona: $name_persona, Edad: $age_persona, Ciudad:$city_persona';
  }
}

String saludar() {
  return 'Hola mundo';
}

int sumar(int a, int b) {
  return a + b;
}

String saludo2() => 'Hola mundo 2';

int sumar2(int a, int b) => a + b;
