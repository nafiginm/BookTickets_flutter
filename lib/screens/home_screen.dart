import 'package:book_tickets/screens/hotel_screen.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
            ),
            child: Column(
              children: [
                Gap(
                  AppLayout.getHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(
                          AppLayout.getHeight(5),
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img_1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(25),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(12),
                    vertical: AppLayout.getHeight(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(
                  AppLayout.getHeight(40),
                ),
                const AppDoubleTextWidget(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),
              ],
            ),
          ),
          Gap(
            AppLayout.getHeight(15),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(16),
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map(
                    (singleTicket) => TicketView(
                      ticket: singleTicket,
                    ),
                  )
                  .toList(),
            ),
          ),
          Gap(
            AppLayout.getHeight(15),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
            ),
            child: const AppDoubleTextWidget(
              bigText: 'Hotels',
              smallText: 'View all',
            ),
          ),
          Gap(
            AppLayout.getHeight(15),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(16),
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList
                  .map(
                    (singleHotel) => HotelScreen(hotel: singleHotel),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
