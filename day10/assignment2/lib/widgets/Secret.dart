import 'package:animate_do/animate_do.dart';
import 'package:assignment2/widgets/Buble.dart';
import 'package:flutter/material.dart';

class Secret extends StatelessWidget {
  const Secret({
    super.key,
    required this.secret,
  });

  final String secret;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
      ),
      child: ShakeY(
        from: 5,
        duration: const Duration(seconds: 5),
        infinite: true,
        child: Bubble(
          child: Center(
            child: Expanded(
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                secret != '' ? secret : 'null',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
