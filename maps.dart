void main() {
  Map<String, String> planets = {
    'First': 'Mercury',
    'Second': 'Venus',
    'Third': 'Earth',
    'Fourth': 'Mars',
    'Fifth': 'Jupiter',
    'Sixth': 'Saturn',
    'Seventh': 'Uranus',
    'Eighth': 'Neptune',
    'Ninth': 'Pluto',
  };

  planets.forEach((ordinal, name) {
    print('$ordinal planet is $name');
  });

  print(planets.containsKey('Third'));
  print(planets.containsValue('Earth'));
  print(planets.keys);
  print(planets.values);

  print(planets);
}
