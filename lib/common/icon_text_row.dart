import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';

class IconTextRow extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const IconTextRow(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 40,
          child: ListTile(
            // contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: Image.asset(
              icon,
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
            title: Text(
                title,
                style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
            onTap: onTap,
          ),
        ),
        Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
      ],
    );
  }
}
