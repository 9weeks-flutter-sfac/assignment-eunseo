import 'package:flutter/material.dart';

class ContactTile extends StatefulWidget {
  const ContactTile(
      {super.key, required this.name, required this.phone, required this.img});
  final String name;
  final String phone;
  final String img;

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(widget.img),
      title: Text(
        widget.name,
      ),
      subtitle: Text(widget.phone),
      trailing: const Icon(
        Icons.phone,
      ),
    );
  }
}
