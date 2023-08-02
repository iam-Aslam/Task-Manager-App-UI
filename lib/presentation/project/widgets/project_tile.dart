// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'package:taskmanagment/constants/sizes.dart';
import 'package:taskmanagment/presentation/dashboard_design/screen/dashboard_screen.dart';

import 'stack_images.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    Key? key,
    required this.title,
    required this.percentage,
    required this.color,
    required this.percentageCount,
  }) : super(key: key);
  final String title;
  final double percentage;
  final Color color;
  final String percentageCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const DashboardScreen(),
          withNavBar: false,
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Material(
              elevation: 3,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 5.5,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            //  'App Animation',
                            title,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          kHeight(context, 250),
                          Text(
                            'Today, Shared by- Unbox Digital',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                letterSpacing: 1,
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          kHeight(context, 70),
                          Text(
                            'Team',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                letterSpacing: .5,
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          kHeight(context, 300),
                          const StackImages(),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.calendar_today,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                ' July  25,2021- July 30,2021',
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 8.0,
                        animation: true,
                        percent: percentage,
                        center: Text(
                          "$percentageCount%",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: color,
                        backgroundColor:
                            const Color.fromARGB(213, 220, 217, 217),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
