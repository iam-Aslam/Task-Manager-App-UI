import 'package:flutter/material.dart';

class StackImages extends StatelessWidget {
  const StackImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: const Stack(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80'),
            ),
            Positioned(
              left: 15,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://www.assyst.de/cms/upload/sub/digitalisierung/18-F.jpg'),
              ),
            ),
            Positioned(
              left: 30,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://loop.frontiersin.org/images/profile/344823/203'),
              ),
            ),
            Positioned(
              left: 40,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://www.assyst.de/cms/upload/sub/digitalisierung/18-F.jpg'),
              ),
            ),
            Positioned(
              left: 50,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.orangeAccent,
                child: Center(
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
