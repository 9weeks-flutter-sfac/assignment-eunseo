import 'package:flutter/material.dart';

// custom appbar를 쓰려면 height을 구해야 함. PreferredSizeWidget 필요
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('내 연락처'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }

  // custom appbar를 쓰려면 height을 구해야 함.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
