import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    this.onFilterSelected,
    required this.imageProvider, // Tambahkan parameter ini
  });

  final Color color;
  final VoidCallback? onFilterSelected;
  final ImageProvider imageProvider; // Tambahkan ini untuk menerima gambar

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Image(
              image: imageProvider, // Gunakan imageProvider di sini
              color: color.withOpacity(0.5),
              colorBlendMode: BlendMode.hardLight,
              fit: BoxFit.cover, // Sesuaikan gambar dengan proporsi
            ),
          ),
        ),
      ),
    );
  }
}
