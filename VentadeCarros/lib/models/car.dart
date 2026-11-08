class Car {
  final String id;
  final String brand;
  final String name;
  final String category;
  final int year;
  final int price; // en pesos mexicanos
  final int km;
  final int hp;
  final double rating;
  final String fuel;
  final String transmission;
  final String shortDescription;
  final String description;
  final String imageUrl;

  const Car({
    required this.id,
    required this.brand,
    required this.name,
    required this.category,
    required this.year,
    required this.price,
    required this.km,
    required this.hp,
    required this.rating,
    required this.fuel,
    required this.transmission,
    required this.shortDescription,
    required this.description,
    required this.imageUrl,
  });

  String get title => '$brand $name';

  String get priceText => '\$${_withCommas(price)}';

  String get kmText => km == 0 ? 'Nuevo' : '${_withCommas(km)} km';

  static String _withCommas(int value) {
    final s = value.toString();
    final buffer = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buffer.write(',');
      buffer.write(s[i]);
    }
    return buffer.toString();
  }
}
