import 'package:assignment1/MusicTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      home: Scaffold(
        appBar: AppBar(
          // 방법1
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(1),
          //   child: Container(
          //     color: Colors.white,
          //     height: 1,
          //   ),
          // ),
          // 방법2
          shape: const Border(
            bottom: BorderSide(
              color: Colors.white10,
              width: 1,
            ),
          ),
          title: const Text("아워리스트"),
          centerTitle: false,
          elevation: 0,
          leading: const Icon(Icons.navigate_before),
          actions: const [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.airplay,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ],
        ),
        body: ListView(
          children: const [
            MusicTile(
              albumCover: 'assets/music_come_with_me.png',
              songTitle: 'Come with me',
              artist: 'Surfaces 및 salem ilese',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_good_day.png',
              songTitle: 'Good day',
              artist: 'Surfaces',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_honesty.png',
              songTitle: 'Honesty',
              artist: 'Pink Sweat\$',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_i_wish_i_missed_my_ex.png',
              songTitle: 'I Wish I Missed My Ex',
              artist: '마할리아 버크마',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_sucker_for_you.png',
              songTitle: 'Sucker for you',
              artist: '맷 테리',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_summer_is_for_falling_in_love.png',
              songTitle: 'Summer is for falling in love',
              artist: 'Sarah Kang & Eye Love Brandon',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_these_days.png',
              songTitle:
                  'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
              artist: 'Rudimental',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_you_make_me.png',
              songTitle: 'You Make Me',
              artist: 'DAY6',
              duration: '3:00',
            ),
            MusicTile(
              albumCover: 'assets/music_zombie_pop.png',
              songTitle: 'Zombie Pop',
              artist: 'DRP IAN',
              duration: '3:00',
            ),
          ],
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
              icon: Icon(Icons.search),
              label: '둘러보기',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: '보관함',
            ),
          ],
        ),
      ),
    );
  }
}
