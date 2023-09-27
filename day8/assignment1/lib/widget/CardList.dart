import 'package:assignment1/widget/CustomCard.dart';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

class CardList extends StatefulWidget {
  const CardList({
    super.key,
    required this.future,
    required this.url,
    required this.refreshData,
  });

  final Future future;
  final String url;
  final Future<void> Function() refreshData;
  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    var refreshController = RefreshController(initialRefresh: false);

    return Expanded(
      child: FutureBuilder(
          future: widget.future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var res = snapshot.data?.data["body"];
              return SmartRefresher(
                controller: refreshController,
                header: const WaterDropHeader(),
                physics: const AlwaysScrollableScrollPhysics(),
                onRefresh: () async {
                  await Future.delayed(const Duration(milliseconds: 1000));
                  setState(() {
                    widget.refreshData();
                  });
                  refreshController.refreshCompleted();
                },
                child: CardListBuilder(res: res),
              );
            }
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('인터넷 확인 중 입니다.'),
                CircularProgressIndicator(),
              ],
            );
          }),
    );
  }
}

class CardListBuilder extends StatelessWidget {
  const CardListBuilder({
    super.key,
    required this.res,
  });

  final res;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.6,
      ),
      itemCount: res.length,
      itemBuilder: (context, idx) {
        return CustomCard(item: res[idx]);
      },
    );
  }
}
