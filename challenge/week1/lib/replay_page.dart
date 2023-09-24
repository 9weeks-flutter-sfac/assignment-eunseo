import 'package:flutter/material.dart';
import 'package:week1/PlayBtn.dart';

class ReplayPage extends StatefulWidget {
  const ReplayPage(
      {super.key,
      required this.title,
      required this.artist,
      required this.cover,
      required this.duration});

  final String title;
  final String artist;
  final String cover;
  final String duration;
  @override
  State<ReplayPage> createState() => _ReplayPageState();
}

class _ReplayPageState extends State<ReplayPage> {
  bool isPlay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.asset(
                widget.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.artist,
              textAlign: TextAlign.center,
              style: TextStyle(
                // text opacity 주는 법
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //playbar
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PlayBtn(
                      icon: Icons.skip_previous,
                      alert: '이전곡 재생은 중비 중인 기능 입니다.'),
                  PlayBtn(
                    icon: isPlay ? Icons.play_arrow : Icons.pause,
                    alert: isPlay ? '곡이 재생 중 입니다.(사실 아님)' : '곡을 일시정지합니다.(구라)',
                    isPlay: isPlay,
                    onToggle: () {
                      isPlay = !isPlay;
                      setState(() {});
                    },
                  ),
                  const PlayBtn(
                      icon: Icons.skip_next, alert: '다음곡 재생은 중비 중인 기능 입니다.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
