import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile({
    super.key,
    required this.albumCover,
    required this.songTitle,
    required this.artist,
    required this.duration,
  });

  final String albumCover;
  final String songTitle;
  final String artist;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.black54,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          albumCover,
        ),
      ),
      title: Text(
        songTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.check_circle,
            size: 16,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              artist,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.fiber_manual_record,
            size: 5,
          ),
          const SizedBox(width: 4),
          Text(duration),
        ],
      ),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
