import 'package:assignment1/util/variables/images.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            backgroundImg,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
