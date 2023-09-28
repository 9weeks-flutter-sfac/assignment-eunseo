import 'dart:async';

import 'package:assignment1/widget/CardListBuilder.dart';
import 'package:assignment1/widget/CustomCard.dart';
import 'package:assignment1/widget/ShimmerCard.dart';
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
  final refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
          future: widget.future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var res = snapshot.data?.data["body"];
              // 리프레셔
              return SmartRefresher(
                controller: refreshController,
                header: const WaterDropHeader(),
                physics: const AlwaysScrollableScrollPhysics(),
                onRefresh: () async {
                  setState(() {
                    widget.refreshData();
                  });
                  refreshController.refreshCompleted();
                },
                // 카드 빌더
                child: CardListBuilder(
                  buildWidget: (item) => CustomCard(item: item),
                  res: res,
                ),
              );
            }
            return Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.grey.shade300,
              child: CardListBuilder(
                //여기서 shimmerCard가 받는 인자가 없는데도 item이라는 키워드가 들어가야 에러가 안나는 이유는 뭘까?
                buildWidget: (item) => const ShimmerCard(),
              ),
            );
          }),
    );
  }
}
