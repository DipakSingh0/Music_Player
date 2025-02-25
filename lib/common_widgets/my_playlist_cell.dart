import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class MyPlaylistCell extends StatelessWidget {
  final Map pObj;
  // final VoidCallback onPressedPlay;
  final VoidCallback onPressed;

  const MyPlaylistCell({
    super.key,
    required this.pObj,
    required this.onPressed,
    // required this.onPressedPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 90,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            alignment: Alignment.center, 
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                pObj["image"],
                width: 100,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Container(
             width: 100,
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(color: TColor.primaryText28),
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent,
              ),
            ),
           
          ]),
          const SizedBox(width: 8),
          Text(
            pObj["name"],
            maxLines: 1,
            style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
        
        ],
      ),
    );
  }
}
