import 'package:flutter/material.dart';
import 'package:week1/MusicTile.dart';
import 'package:week1/music_list.dart';
import 'package:week1/replay_page.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('아워리스트'),
      ),
      body: ListView(
        children: musicList
            .map(
              (song) => InkWell(
                onTap: () {
                  // Navitage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReplayPage(
                        title: song["title"]!,
                        artist: song["artist"]!,
                        cover: song["cover"]!,
                        duration: song["duration"]!,
                      ),
                    ),
                  );
                },
                child: MusicTile(
                  albumCover: song["cover"]!,
                  songTitle: song["title"]!,
                  artist: song["artist"]!,
                  duration: song["duration"]!,
                ),
              ),
            )
            .toList(),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min, //최소한의 크기만큼 공간 차지
        children: [
          ListTile(
            tileColor: const Color(0xff2a2a2a),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/music_you_make_me.png"),
            ),
            title: const Text(
              "You Make Me",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: const Row(
              children: [
                Flexible(
                  child: Text(
                    "Day6",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 4),
              ],
            ),
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.play_arrow,
                  ),
                ),
                Icon(
                  Icons.skip_next,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.white10,
            alignment: Alignment.centerLeft,
            child: Container(
              width: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff2a2a2a),
        selectedItemColor: Colors.white,
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: '둘러보기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
