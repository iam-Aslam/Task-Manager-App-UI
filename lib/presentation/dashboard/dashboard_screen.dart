import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:taskmanagment/constants/colors.dart';
import 'package:taskmanagment/presentation/add_task/screen/add_task.dart';
import 'package:taskmanagment/presentation/home/screen/home.dart';
import 'package:taskmanagment/presentation/message/screen/message.dart';
import 'package:taskmanagment/presentation/project/screen/project.dart';
import 'package:taskmanagment/presentation/settings/screen/settings.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> buildScreen() {
    return [
      const HomeScreen(),
      const ProjectScreen(),
      const AddTaskScreen(),
      const MessageScreen(),
      const SettingsScreen(),
    ];
  }

  navbarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.house_fill,
          color: themeColor,
        ),
        inactiveIcon: const Icon(
          CupertinoIcons.house_fill,
          color: Colors.grey,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.square_list_fill,
          color: themeColor,
        ),
        inactiveIcon: const Icon(
          CupertinoIcons.square_list_fill,
          color: Colors.grey,
        ),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: themeColor,
        activeColorPrimary: themeColor,
        opacity: 1,
        icon: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.mail_solid,
          color: themeColor,
        ),
        inactiveIcon: const Icon(
          CupertinoIcons.mail_solid,
          color: Colors.grey,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.settings,
          color: themeColor,
        ),
        inactiveIcon: const Icon(
          Icons.settings,
          color: Colors.grey,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: PersistentTabView(
        context,
        screens: buildScreen(),
        items: navbarItem(),
        controller: controller,
        backgroundColor: Colors.white,
        decoration: NavBarDecoration(borderRadius: BorderRadius.circular(0)),
        navBarStyle: NavBarStyle.style15,
      )),
    );
  }
}
