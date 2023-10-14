import 'package:assignment2/model/company.dart';
import 'package:flutter/material.dart';

class CompanyTile extends StatelessWidget {
  const CompanyTile({super.key, required this.company});
  final Company company;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Company',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(company.name),
        const SizedBox(height: 8),
        Text(company.catchPhrase),
        const SizedBox(height: 8),
        Text(company.bs),
      ],
    );
  }
}
