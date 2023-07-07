import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  const backButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: Colors.grey,
      ),
      child: IconButton(
        alignment: Alignment.center,
        icon: Icon(
          Icons.keyboard_arrow_left,
          textDirection: TextDirection.ltr,
        ),
        onPressed: () {},
      ),
    );
  }
}
