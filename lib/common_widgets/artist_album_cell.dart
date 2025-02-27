import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';

class ArtistAlbumCell extends StatelessWidget {
  final Map artObj;

  const ArtistAlbumCell({super.key, required this.artObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      // height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              artObj["image"],
              width: 250,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              artObj["name"],
              style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Text(
              artObj["name"],
              maxLines: 1,
              style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 11,
                // fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
