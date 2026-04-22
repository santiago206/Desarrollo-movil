abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Caminar_animal {
  void caminar_animal() => print('empece a caminar');
}

mixin Nadar_animal {
  void nadar_animal() => print('empece a nadar');
}

mixin Volar_animal {
  void volar_animal() => print('empece a volar');
}

class Delfin extends Mamifero with Nadar_animal {}

class Murcielago extends Mamifero with Caminar_animal, Volar_animal {}

class Gato extends Mamifero with Caminar_animal {}

class Paloma extends Ave with Caminar_animal, Volar_animal {}

class Pato extends Ave with Caminar_animal, Volar_animal, Nadar_animal {}

class Tiburon extends Pez with Nadar_animal {}

class PezVolador extends Pez with Nadar_animal, Volar_animal {}

void main() {
  final delfin = Delfin();
  delfin.nadar_animal();

  final gato = Gato();
  gato.caminar_animal();

  final pato = Pato();
  pato.caminar_animal();
  pato.volar_animal();
  pato.nadar_animal();
}
