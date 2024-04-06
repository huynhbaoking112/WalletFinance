import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {

  final String name;
  final String sub;
  final String path;

  const MyTile({super.key, required this.name, required this.sub, required this.path});

  @override
  Widget build(BuildContext context) {
    return //statistics
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //image
        Row(
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(12),
              child: Image(
                image: AssetImage(path),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            // name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  sub,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ],
        ),

        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
