import 'package:flutter/material.dart';

class CardListBuilder extends StatelessWidget {
  const CardListBuilder({
    super.key,
    this.res,
    required this.buildWidget,
  });

  final res;
  final Function buildWidget;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.6,
      ),
      itemCount: res?.length ?? 6,
      itemBuilder: (context, idx) {
        if (res != null) {
          return buildWidget(res[idx]);
        }
        return buildWidget(null);
      },
    );
  }
}
