import 'package:assignment3/model/dict.dart';
import 'package:assignment3/model/meaning.dart';
import 'package:assignment3/widget/definition_tile.dart';
import 'package:flutter/material.dart';

class MeaningCard extends StatelessWidget {
  const MeaningCard({super.key, required this.dict});
  final Dict dict;

  @override
  Widget build(BuildContext context) {
    List<Meaning> meanings = dict.meanings;
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 57, 57, 57),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dict.word,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: meanings.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meanings[index].partOfSpeech,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        DefinitionTile(
                            definitions: meanings[index].definitions),
                        // const SizedBox(
                        //   height: 200,
                        // ),
                      ],
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ],
      ),
    );
  }
}
