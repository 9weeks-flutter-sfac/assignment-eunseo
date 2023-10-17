import 'package:assignment1/util/pages.dart';
import 'package:assignment1/view/widgets/NavBtn.dart';
import 'package:flutter/material.dart';

class NavBtns extends StatelessWidget {
  const NavBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: 0.8),
      scrollDirection: Axis.horizontal,
      itemCount: navList.length,
      itemBuilder: (context, idx) {
        return NavBtn(
          label: navList[idx]["label"],
          page: navList[idx]["page"],
        );
      },
    );
  }
}
