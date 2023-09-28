import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CardListBuilder extends StatefulWidget {
  const CardListBuilder({
    super.key,
    this.res,
    required this.buildWidget,
    required this.refreshData,
    required this.url,
  });

  final res;
  final Function buildWidget;
  final Future<void> Function(String) refreshData;
  final String url;

  @override
  State<CardListBuilder> createState() => _CardListBuilderState();
}

class _CardListBuilderState extends State<CardListBuilder> {
  final refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: refreshController,
      header: const MaterialClassicHeader(),
      physics: const AlwaysScrollableScrollPhysics(),
      onRefresh: () async {
        await widget.refreshData(widget.url);
        refreshController.refreshCompleted();
      },
      child: GridView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 0.6,
        ),
        itemCount: widget.res?.length ?? 6,
        itemBuilder: (context, idx) {
          if (widget.res != null) {
            return widget.buildWidget(widget.res[idx]);
          }
          return widget.buildWidget(null);
        },
      ),
    );
  }
}
