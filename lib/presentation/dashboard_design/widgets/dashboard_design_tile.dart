import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:taskmanagment/presentation/project/widgets/stack_images.dart';

import '../../../constants/sizes.dart';

class DashboardDesignTile extends StatelessWidget {
  const DashboardDesignTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 8.0,
                        animation: true,
                        percent: .85,
                        center: const Text(
                          "85%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.greenAccent,
                        backgroundColor:
                            const Color.fromARGB(213, 220, 217, 217),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Team',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              letterSpacing: .5,
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        kHeight(context, 100),
                        const StackImages(),
                        kHeight(context, 120),
                        Text(
                          'Deadline',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              letterSpacing: .5,
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        kHeight(context, 120),
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
                                  letterSpacing: .80,
                                  fontSize: 12,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
