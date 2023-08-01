import 'package:flutter/material.dart';

class StackImges extends StatelessWidget {
  const StackImges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Stack(
          children: [
            const CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80'),
            ),
            const Positioned(
              left: 15,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://www.assyst.de/cms/upload/sub/digitalisierung/18-F.jpg'),
              ),
            ),
            const Positioned(
              left: 30,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://loop.frontiersin.org/images/profile/344823/203'),
              ),
            ),
            Positioned(
                left: MediaQuery.of(context).size.width / 6.5,
                bottom: 3,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                ))
          ],
        ),
      ),
    );
  }
}
