import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';

class PlaylistCell extends StatelessWidget {
  final Map mObj;

  const PlaylistCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      // height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              mObj["image"],
              width: 250,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              mObj["name"],
              style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Text(
              mObj["artists"],
              maxLines: 1,
              style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
