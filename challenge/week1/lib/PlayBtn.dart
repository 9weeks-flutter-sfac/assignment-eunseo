import 'package:flutter/material.dart';

class PlayBtn extends StatefulWidget {
  const PlayBtn({
    super.key,
    required this.alert,
    required this.icon,
    this.isPlay = false,
    this.onToggle,
  });
  final String alert;
  final IconData icon;
  final bool isPlay;
  final VoidCallback? onToggle;

  @override
  State<PlayBtn> createState() => _PlayBtnState();
}

class _PlayBtnState extends State<PlayBtn> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.icon,
        size: 30,
      ),
      onPressed: () {
        if (widget.onToggle != null) {
          widget.onToggle!();
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(widget.alert),
            action: SnackBarAction(
              label: '닫기',
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            ),
          ),
        );
      },
    );
  }
}
