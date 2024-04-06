import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {


  final String textButton;
  final String assetImage;


  const MyButton({super.key, required this.textButton, required this.assetImage});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey.shade400,
                    spreadRadius: 20)
              ],
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsetsDirectional.all(20),
          height: 90,
          child:  Image(
            image: AssetImage(assetImage),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
          textButton,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
