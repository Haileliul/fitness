import 'package:fitness/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        color: Colors.black,
        height: 65.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(FontAwesomeIcons.bars),
            ),
            Text(
              'Exercises',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // Set the desired border color
                  width: 2.0, // Set the desired border width
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
          ],
        ),
      );
    });
  }
}
