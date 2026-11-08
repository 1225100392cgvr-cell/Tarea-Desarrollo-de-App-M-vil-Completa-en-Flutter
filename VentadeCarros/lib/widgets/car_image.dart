import 'package:flutter/material.dart';

/// Imagen de red con indicador de carga y respaldo si falla.
class CarImage extends StatelessWidget {
  final String url;
  final BoxFit fit;

  const CarImage({super.key, required this.url, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      width: double.infinity,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          color: Colors.grey.shade300,
          child: const Center(child: CircularProgressIndicator()),
        );
      },
      errorBuilder: (context, error, stack) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey.shade700, Colors.blueGrey.shade300],
          ),
        ),
        child: const Center(
          child: Icon(Icons.directions_car, size: 64, color: Colors.white70),
        ),
      ),
    );
  }
}
