import 'package:flutter/material.dart';
import 'package:taskmanagment/constants/colors.dart';
import 'package:taskmanagment/constants/data.dart';
import 'package:taskmanagment/constants/sizes.dart';
import 'package:taskmanagment/presentation/home/widgets/header.dart';
import '../../home/widgets/sub_title.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadWidget(),
              kHeight(context, 40),
              const SubtTitle(
                text: 'Project',
                color: Colors.black,
              ),
              kHeight(context, 40),
              SizedBox(
                height: 40,
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: themeColor),
                  indicatorColor: Colors.blue,
                  indicatorWeight: 10.0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text('All'),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text('Ongoing'),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text('Completed'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return projectItems[index];
                        },
                        separatorBuilder: (context, index) {
                          return kHeight(context, 250);
                        },
                        itemCount: projectItems.length),
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return projectItems[index];
                        },
                        separatorBuilder: (context, index) {
                          return kHeight(context, 250);
                        },
                        itemCount: projectItems.length),
                    ListView.separated(
                        itemBuilder: (context, index) {
                          return projectItems[index];
                        },
                        separatorBuilder: (context, index) {
                          return kHeight(context, 250);
                        },
                        itemCount: projectItems.length),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
