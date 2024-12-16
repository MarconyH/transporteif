import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  final Widget icon;
  final String title;

  const NavigationCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                icon,
                Text(title),
              ],
            ),
            const Icon(Icons.arrow_forward, opticalSize: 10,)
          ],
        ),
      ),
    );
  }
}
