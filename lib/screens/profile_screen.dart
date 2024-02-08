import 'package:flight_ticket/utils/app_layout.dart';
import 'package:flight_ticket/widgets/ticket_column.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png")),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Text(
                      "New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const Text(
                            "Premium Status",
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(
              color: Colors.grey.shade400,
            ),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: AppLayout.getHeight(90),
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18)),
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 18, color: const Color(0xFF264CD2)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've got a new award",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(50)),
            Text(
              "Accumulated miles",
              style: Styles.headLineStyle2,
            ),
            Gap(AppLayout.getHeight(35)),
            Text(
              "192802",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(35)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: Column(
                children: [
                  const TicketColumn(
                      firstText: "Miles accrued",
                      secondText: "23 May 2022",
                      isBig: false),
                  Gap(AppLayout.getHeight(25)),
                  const TicketColumn(
                      firstText: "23 042",
                      secondText: "Airline CO",
                      isBig: true),
                  Gap(AppLayout.getHeight(8)),
                  const TicketColumn(
                      firstText: "Miles",
                      secondText: "Recieved from",
                      isBig: false),
                  Gap(AppLayout.getHeight(35)),
                  const TicketColumn(
                      firstText: "24", secondText: "McDonal's", isBig: true),
                  Gap(AppLayout.getHeight(8)),
                  const TicketColumn(
                      firstText: "Miles",
                      secondText: "Recieved from",
                      isBig: false),
                  Gap(AppLayout.getHeight(35)),
                  const TicketColumn(
                      firstText: "52 340", secondText: "Exuma", isBig: true),
                  Gap(AppLayout.getHeight(8)),
                  const TicketColumn(
                      firstText: "Miles",
                      secondText: "Recieved from",
                      isBig: false),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(35)),
            InkWell(
              onTap: () {},
              child: Text(
                "How to get more miles",
                style:
                    Styles.headLineStyle4.copyWith(color: Styles.primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
