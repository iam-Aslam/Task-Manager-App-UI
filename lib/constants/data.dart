import 'package:flutter/material.dart';
import 'package:taskmanagment/presentation/home/widgets/task_card.dart';
import 'package:taskmanagment/presentation/project/widgets/project_tile.dart';
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

final List<ProjectTile> projectItems = [
  const ProjectTile(
    percentage: 0.65,
    color: themeColor,
    title: 'App Animation',
    percentageCount: '65',
  ),
  const ProjectTile(
    percentage: 0.85,
    color: Colors.greenAccent,
    title: 'Dashboard Design',
    percentageCount: '85',
  ),
  const ProjectTile(
    percentage: 0.30,
    color: Colors.orangeAccent,
    title: 'UI/UX Design',
    percentageCount: '30',
  ),
  const ProjectTile(
    percentage: 0.65,
    color: themeColor,
    title: 'App Animation',
    percentageCount: '65',
  ),
];
