import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.item,
  });

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              item["url"],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            item["msg"],
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
