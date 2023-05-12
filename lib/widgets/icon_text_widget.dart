import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(12),
        vertical: AppLayout.getHeight(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffbfc2df),
          ),
          Gap(
            AppLayout.getWidth(10),
          ),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
