import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:assignment1/view/widgets/Buble.dart';
import 'package:flutter/material.dart';

class AuthorItem extends StatelessWidget {
  const AuthorItem({
    super.key,
    this.avatar,
    required this.name,
  });

  final String? avatar;
  final String name;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final randomFrom = random.nextDouble() * 15.0;

    return Column(
      children: [
        Expanded(
          child: ShakeY(
            from: randomFrom, //0~15 사이 숫자 랜덤으로
            duration: const Duration(seconds: 5),
            infinite: true,
            child: Bubble(
              child: avatar != ''
                  ? Image.network(
                      avatar!,
                    )
                  : Image.asset('assets/imgs/origami.png'),
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
