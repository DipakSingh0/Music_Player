import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';

class ViewAllSection extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;

  const ViewAllSection({
    super.key,
    required this.title,
    this.buttonTitle = "View All",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        // Use a Row to arrange widgets horizontally
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Align items at ends
        children: [
          Text(
            title,
            style: TextStyle(
              color: TColor.primary,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: TColor.org,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
