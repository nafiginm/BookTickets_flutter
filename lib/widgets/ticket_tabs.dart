import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xfff4f6fd),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
