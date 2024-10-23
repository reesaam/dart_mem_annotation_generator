enum TypesLibrary {
  int('int'),
  double('double'),
  string('String'),
  bool('bool'),
  function('Function'),
  list('List'),
  set('Set'),
  map('Map'),
  runes('Runes'),
  symbol('Symbol');

  final String value;
  const TypesLibrary(this.value);
}
