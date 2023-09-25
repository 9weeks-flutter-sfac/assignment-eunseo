import 'package:assignment3/widgets/ContactTile.dart';
import 'package:flutter/material.dart';

class DetailContact extends StatelessWidget {
  const DetailContact(
      {super.key, required this.name, required this.phone, required this.img});
  final String name;
  final String phone;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('연락처 상세'),
        flexibleSpace: Image(
          image: NetworkImage(img),
          height: 100,
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ContactTile(
        name: name,
        phone: phone,
        img: img,
      ),
    );
  }
}
