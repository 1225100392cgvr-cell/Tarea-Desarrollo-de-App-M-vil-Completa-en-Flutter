import 'package:flutter/material.dart';

import '../data/cars_data.dart';
import '../models/car.dart';
import '../widgets/car_card.dart';
import '../widgets/category_chips.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _query = '';
  String _category = 'Todos';

  List<Car> get _filteredCars {
    return mockCars.where((car) {
      final matchesCategory = _category == 'Todos' || car.category == _category;
      final text = _query.toLowerCase();
      final matchesQuery = text.isEmpty ||
          car.title.toLowerCase().contains(text) ||
          car.category.toLowerCase().contains(text);
      return matchesCategory && matchesQuery;
    }).toList();
  }

  void _openDetail(Car car) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => DetailScreen(car: car)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cars = _filteredCars;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AutoMax',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 30),
            tooltip: 'Perfil',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Perfil (próximamente)')),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: TextField(
              onChanged: (value) => setState(() => _query = value),
              decoration: InputDecoration(
                hintText: 'Buscar marca o modelo...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          CategoryChips(
            categories: carCategories,
            selected: _category,
            onSelected: (value) => setState(() => _category = value),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: cars.isEmpty
                ? const Center(
                    child: Text(
                      'No se encontraron autos',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                    itemCount: cars.length,
                    itemBuilder: (context, index) {
                      final car = cars[index];
                      return CarCard(car: car, onTap: () => _openDetail(car));
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
