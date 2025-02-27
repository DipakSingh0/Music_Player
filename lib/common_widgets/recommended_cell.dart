import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';

class RecommendedCell extends StatelessWidget {
  final Map mObj;

  const RecommendedCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              mObj["image"],
              width: 250,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            mObj["name"],
            style: TextStyle(
              color: TColor.primaryText60,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            mObj["artists"],
            maxLines: 1,
            style: TextStyle(
              color: TColor.primaryText60,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
