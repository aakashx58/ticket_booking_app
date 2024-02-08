import 'package:flight_ticket/screens/ticket_view.dart';
import 'package:flight_ticket/utils/app_info_list.dart';
import 'package:flight_ticket/utils/app_layout.dart';
import 'package:flight_ticket/widgets/dotted_line.dart';
import 'package:flight_ticket/widgets/ticket_column.dart';
import 'package:flight_ticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(16)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          AppLayout.getHeight(20),
                        ),
                        bottomRight: Radius.circular(
                          AppLayout.getHeight(20),
                        ))),
                margin: EdgeInsets.only(
                    right: AppLayout.getHeight(16),
                    left: AppLayout.getHeight(16)),
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Gap(AppLayout.getHeight(10)),
                    const DottedLine(isWhite: false),
                    Gap(AppLayout.getHeight(30)),
                    const TicketColumn(
                      firstText: "Flutter DB",
                      secondText: "5221 478566",
                      isBig: true,
                    ),
                    Gap(AppLayout.getHeight(5)),
                    const TicketColumn(
                        firstText: "Passenger",
                        secondText: "Passport",
                        isBig: false),
                    Gap(AppLayout.getHeight(30)),
                    const DottedLine(isWhite: false),
                    Gap(AppLayout.getHeight(30)),
                    const TicketColumn(
                        firstText: "0055 444 77147",
                        secondText: "B2SG28",
                        isBig: true),
                    Gap(AppLayout.getHeight(5)),
                    const TicketColumn(
                        firstText: "Number of E-ticket",
                        secondText: "Booking Code",
                        isBig: false),
                    Gap(AppLayout.getHeight(30)),
                    const DottedLine(isWhite: false),
                    Gap(AppLayout.getHeight(30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/visa.png",
                              scale: 12,
                            ),
                            Text(
                              " *** 2462",
                              style: Styles.headLineStyle3,
                            )
                          ],
                        ),
                        Text(
                          "\$249.99",
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(5)),
                    // Image.asset("assets/images/visa.png")
                    const TicketColumn(
                        firstText: "Payment Method",
                        secondText: "Price",
                        isBig: false),
                    Gap(AppLayout.getHeight(30)),
                    const DottedLine(isWhite: false),
                    Gap(AppLayout.getHeight(20)),
                    //BarCode
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/nikhil7299',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(25),
            top: AppLayout.getHeight(252),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(25),
            top: AppLayout.getHeight(252),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
