// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'stack_images.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.title,
    required this.progressColor,
    required this.icon,
    required this.iconColor,
    required this.progress,
  }) : super(key: key);
  final String title;
  final Color progressColor;
  final IconData icon;
  final Color iconColor;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: MediaQuery.of(context).size.height / 11,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 5, top: 5),
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width / 2.2,
                animation: true,
                lineHeight: 10.0,
                animationDuration: 2000,
                percent: progress,
                barRadius: const Radius.circular(10),
                progressColor: progressColor,
              ),
            ],
          ),
          trailing: const StackImges(),
        ),
      ),
    );
  }
}
