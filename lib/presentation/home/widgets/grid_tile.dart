import 'package:flutter/material.dart';
import 'package:taskmanagment/constants/sizes.dart';

class GridTileItem extends StatelessWidget {
  const GridTileItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.35,
      height: MediaQuery.of(context).size.height / 7,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          kHeight(context, 60),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
