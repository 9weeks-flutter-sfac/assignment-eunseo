import 'package:flutter/material.dart';

class CommonFloatingBtn extends StatelessWidget {
  const CommonFloatingBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
