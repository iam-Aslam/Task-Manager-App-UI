import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagment/constants/colors.dart';
import 'package:taskmanagment/constants/data.dart';
import 'package:taskmanagment/constants/sizes.dart';
import 'package:taskmanagment/presentation/home/widgets/grid_tile.dart';
import 'package:taskmanagment/presentation/home/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadWidget(),
              kHeight(context, 40),
              subTitle('Hello', Colors.grey),
              mainHeading(),
              kHeight(context, 35),
              Row(
                children: [
                  const GridTileItem(
                    color: Colors.orangeAccent,
                    icon: CupertinoIcons.time,
                    title: 'In Progress',
                  ),
                  kWidth(context, 24),
                  const GridTileItem(
                    color: themeColor,
                    icon: Icons.repeat,
                    title: 'Ongoing',
                  ),
                ],
              ),
              kHeight(context, 50),
              Row(
                children: [
                  const GridTileItem(
                    color: Colors.greenAccent,
                    icon: Icons.list_alt,
                    title: 'Completed',
                  ),
                  kWidth(context, 24),
                  const GridTileItem(
                    color: Colors.redAccent,
                    icon: Icons.cancel_presentation,
                    title: 'Cancel',
                  ),
                ],
              ),
              kHeight(context, 50),
              Row(
                children: [
                  subTitle('Daily Task', Colors.black),
                  const Spacer(),
                  const Text('All Task'),
                  const Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return taskItems[index];
                  },
                  separatorBuilder: (context, index) => kHeight(context, 70),
                  itemCount: taskItems.length),
            ],
          ),
        ),
      ),
    ));
  }

  Text mainHeading() {
    return Text(
      'Alex Marconi',
      style: GoogleFonts.roboto(
        textStyle: const TextStyle(
          letterSpacing: .5,
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Text subTitle(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          letterSpacing: .5,
          fontSize: 25,
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
