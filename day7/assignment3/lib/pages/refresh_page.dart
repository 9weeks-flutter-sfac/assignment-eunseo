import 'dart:math';

import 'package:assignment3/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  runApp(const RefreshPage());
}

class RefreshPage extends StatefulWidget {
  const RefreshPage({super.key});

  @override
  State<RefreshPage> createState() => _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {
  int index = 0;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("7일차 과제 1번"),
      ),
      body: SmartRefresher(
        header: const WaterDropHeader(),
        physics: const AlwaysScrollableScrollPhysics(),
        controller: refreshController,
        onRefresh: () async {
          await Future.delayed(const Duration(milliseconds: 1000));
          setState(() {
            index = Random().nextInt(imageUrls.length);
          });
          refreshController.refreshCompleted();
        },
        child: Center(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              imageUrls[index],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          index = Random().nextInt(imageUrls.length);
          setState(() {});
        },
      ),
    );
  }
}
