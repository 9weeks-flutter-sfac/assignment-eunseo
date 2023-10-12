import 'package:assignment3/model/definition.dart';
import 'package:flutter/material.dart';

class DefinitionTile extends StatelessWidget {
  const DefinitionTile({super.key, required this.definitions});
  final List<Definition> definitions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('- Definition'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: definitions.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(e.definition),
              ],
            );
          }).toList(),
        ),
        const Text('-Synonyms: '),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: definitions.map((e) {
            if (e.antonyms.isNotEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.synonyms.join(', ')),
                ],
              );
            }
            return Container();
          }).toList(),
        ),
        const Text('-Antonyms: '),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: definitions.map((e) {
            if (e.antonyms.isNotEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.antonyms.join(', ')),
                ],
              );
            }
            return Container();
          }).toList(),
        ),
      ],
    );
  }
}
