void main() {
  final agumon = Digimon(
    name: 'Agumon',
    hp: 100,
    hasOwner: true,
    isAlive: null,
    skills: ['Fireball', 'Thunder', 'Ice'],
    enemies: ['Gatomon', 'Patamon', 'Tentomon'],
    owner: 'Matt',
    evolutions: ['Greymon', 'MetalGreymon', 'WarGreymon'],
  );
  agumon.greet();
  agumon.attack('Fireball');
  agumon.evolve('Greymon');
  agumon.digimonSummary();
}

class Digimon {
  String name;
  int hp;
  bool hasOwner;
  bool? isAlive;
  List<String> skills;
  List<String> enemies;
  String owner;
  List<String> evolutions;

  Digimon({
    required this.name,
    required this.hp,
    required this.hasOwner,
    this.isAlive,
    required this.skills,
    required this.enemies,
    required this.owner,
    required this.evolutions,
  });

  void greet() {
    print('Hello, I am $name!');
  }

  void attack(String skill) {
    if (skills.contains(skill)) {
      print('$name uses $skill!');
    } else {
      print('$name does not know $skill.');
    }
  }
  void evolve(String evolution) {
    if (evolutions.contains(evolution)) {
      print('$name evolves into $evolution!');
    } else {
      print('$name cannot evolve into $evolution.');
    }
  }
  void digimonSummary() {
    print('Name: $name');
    print('HP: $hp');
    print('Has Owner: $hasOwner');
    print('Is Alive: $isAlive');
    print('Skills: ${skills.join(', ')}');
    print('Enemies: ${enemies.join(', ')}');
    print('Owner: $owner');
    print('Evolutions: ${evolutions.join(', ')}');
  }
}
