import 'package:assignment2/builder/NavBtns.dart';
import 'package:assignment2/widgets/Background.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Shit.. 비밀이야',
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            Image.asset(
              'assets/imgs/fashion.png',
              width: 300,
            ),
            const SizedBox(
              height: 200,
              child: NavBtns(),
            ),
          ],
          // button
        ),
      ),
    );
  }
}
