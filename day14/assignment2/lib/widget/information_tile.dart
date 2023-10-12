import 'package:assignment2/model/address.dart';
import 'package:assignment2/model/user.dart';
import 'package:flutter/material.dart';

class InformationTile extends StatelessWidget {
  const InformationTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    Address address = user.address;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Icon(Icons.mail),
            const SizedBox(width: 8),
            Text(user.email),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Icon(Icons.phone),
            const SizedBox(width: 8),
            Text(user.phone),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Icon(Icons.place),
            const SizedBox(width: 8),
            Text('${address.city}${address.street}${address.suite}'),
          ],
        ),
      ],
    );
  }
}
