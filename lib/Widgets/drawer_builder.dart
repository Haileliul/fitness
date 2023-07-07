import 'package:fitness/constants/constants.dart';
import 'package:flutter/material.dart';

class DrawerBuilder extends StatelessWidget {
  const DrawerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              accountName: const Text('John Smith'),
              accountEmail: const Text('john@email.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/images/userprofile.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 30.0),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      Text('Age'),
                      Text('Sex'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
