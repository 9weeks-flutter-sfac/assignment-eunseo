import 'package:assignment2/model/company.dart';
import 'package:assignment2/model/user.dart';
import 'package:flutter/material.dart';

class CompanyTile extends StatelessWidget {
  const CompanyTile({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    Company company = user.company;
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
