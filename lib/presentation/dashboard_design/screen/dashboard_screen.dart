import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagment/constants/sizes.dart';
import 'package:taskmanagment/presentation/dashboard_design/widgets/dashboard_design_tile.dart';
import 'package:taskmanagment/presentation/dashboard_design/widgets/header_dashboard.dart';
import 'package:taskmanagment/presentation/dashboard_design/widgets/project_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderDashboard(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Dashboard Design',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                kHeight(context, 110),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Today, Shared by -Unbox Digital',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        letterSpacing: .8,
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const DashboardDesignTile(),
                kHeight(context, 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Project Progress',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 5.5,
                    child: const Column(
                      children: [
                        ProjectProgressItem(
                          text: 'Create a user flow',
                        ),
                        ProjectProgressItem(
                          text: 'Create wire frame',
                        ),
                        ProjectProgressItem(
                          text: 'Transform to visual design',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
