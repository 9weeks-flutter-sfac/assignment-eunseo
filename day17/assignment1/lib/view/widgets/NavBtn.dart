import 'package:flutter/material.dart';

class NavBtn extends StatelessWidget {
  const NavBtn({
    super.key,
    required this.page,
    required this.label,
  });
  final Widget page;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          // page 이동
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: Colors.white,
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 36,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
