void main() {
  final agumon =  Digimon(
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
}