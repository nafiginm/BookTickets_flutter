import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20),
              ),
              children: [
                Gap(
                  AppLayout.getHeight(20),
                ),
                Text(
                  'Tickets',
                  style: Styles.headLineStyle1,
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                const AppTicketTabs(
                  firstTab: 'Upcoming',
                  secondTab: 'Previous',
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(20),
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: '5221 364869',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        width: 5,
                        isColor: false,
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '0055 444 77147',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        width: 5,
                        isColor: false,
                      ),
                      Gap(
                        AppLayout.getHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    ' *** 2462',
                                    style: Styles.headLineStyle3,
                                  ),
                                ],
                              ),
                              Gap(
                                AppLayout.getHeight(5),
                              ),
                              Text(
                                'Payment method',
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(20),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              left: AppLayout.getWidth(25),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Styles.textColor,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getWidth(25),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Styles.textColor,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
