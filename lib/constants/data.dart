import 'package:flutter/material.dart';
import 'package:taskmanagment/presentation/home/widgets/task_card.dart';

import 'colors.dart';

final List<TaskCard> taskItems = [
  const TaskCard(
    icon: Icons.check_circle_outlined,
    iconColor: Colors.grey,
    progressColor: themeColor,
    title: 'App Animation',
    progress: 0.9,
  ),
  const TaskCard(
    icon: Icons.check_circle_rounded,
    iconColor: Colors.greenAccent,
    progressColor: Colors.greenAccent,
    title: 'Dashboard Design',
    progress: 1,
  ),
  const TaskCard(
    icon: Icons.check_circle_outlined,
    iconColor: Colors.grey,
    progressColor: Colors.orangeAccent,
    title: 'UI/UX Design',
    progress: .5,
  ),
];
