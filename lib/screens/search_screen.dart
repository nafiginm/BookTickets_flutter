import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:book_tickets/widgets/icon_text_widget.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(
              AppLayout.getHeight(20),
            ),
            Text(
              'What are\nyou looking for?',
              style: Styles.headLineStyle1.copyWith(
                fontSize: AppLayout.getWidth(35),
              ),
            ),
            Gap(
              AppLayout.getHeight(20),
            ),
            const AppTicketTabs(
              firstTab: 'Airline tickets',
              secondTab: 'Hotels',
            ),
            Gap(
              AppLayout.getHeight(25),
            ),
            const AppIconText(
              icon: Icons.flight_takeoff_rounded,
              text: 'Departure',
            ),
            Gap(
              AppLayout.getHeight(20),
            ),
            const AppIconText(
              icon: Icons.flight_land_rounded,
              text: 'Arrival',
            ),
            Gap(
              AppLayout.getHeight(25),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(18),
                vertical: AppLayout.getHeight(15),
              ),
              decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            Gap(
              AppLayout.getHeight(40),
            ),
            const AppDoubleTextWidget(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
            ),
            Gap(
              AppLayout.getHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(425),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/sit.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Gap(
                        AppLayout.getHeight(12),
                      ),
                      Text(
                        "20% discount on the early booking of this flights. Don't miss out this chance.",
                        style: Styles.headLineStyle2,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(200),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(15),
                            vertical: AppLayout.getHeight(15),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xff3ab8b8),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Gap(
                                AppLayout.getHeight(10),
                              ),
                              Text(
                                'Take the survey about our services and get discount',
                                style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -40,
                          right: -45,
                          child: Container(
                            padding: EdgeInsets.all(
                              AppLayout.getHeight(30),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: const Color(0xff189999),
                              ),
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(15),
                    ),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(15),
                        vertical: AppLayout.getHeight(15),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffec6545),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Take love',
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Gap(
                            AppLayout.getHeight(5),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 30),
                                ),
                                TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
