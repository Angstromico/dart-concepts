void main() {
  final digimon = {
    'name': 'Agumon',
    'hp': 100,
    'hasOwner': true,
    'isAlive': null,
    'skills': ['Fireball', 'Thunder', 'Ice'],
    'enemies': ['Gatomon', 'Patamon', 'Tentomon'],
    'owner': 'Matt',
    'evolutions': ['Greymon', 'MetalGreymon', 'WarGreymon'],
    'sprites': {
      1: 'https://digimon.shadowsmith.com/img/agumon.jpg',
      2: 'https://digimon.shadowsmith.com/img/agumon.jpg',
    },
  };

  print("""
    My digimon is ${digimon['name']}
    HP: ${digimon['hp']}
    Has owner: ${digimon['hasOwner']}
    Is alive: ${digimon['isAlive']}
    Skills: ${digimon['skills']}
    Enemies: ${digimon['enemies']}
    Owner: ${digimon['owner']}
    Evolutions: ${digimon['evolutions']}
    Sprites:  first ${(digimon['sprites'] as Map<int, String>)[1]} second ${(digimon['sprites'] as Map<int, String>)[2]}
  """);
}