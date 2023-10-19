import 'package:animate_do/animate_do.dart';
import 'package:assignment1/view/widgets/Buble.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 8,
              ),
              child: Text(
                maxLines: 5,
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
