import 'package:flutter/material.dart';

class HeaderDashboard extends StatelessWidget {
  const HeaderDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
