void main() {
  final String digimon = 'Agumon';
  final int hp = 100;
  final bool hasOwner = true;
  bool? isAlive;
  final List<String> skills = ['Fireball', 'Thunder', 'Ice'];
  final enemies = <String>['Gatomon', 'Patamon', 'Tentomon'];
  final owner = 'Matt';
  final List<String> evolutions = <String>['Greymon', 'MetalGreymon', 'WarGreymon'];

  print("""
    My digimon is $digimon
    HP: $hp
    Has owner: $hasOwner
    Is alive: $isAlive
    Skills: $skills
    Enemies: $enemies
    Owner: $owner
    Evolutions: $evolutions
  """);
}