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
              padding: const EdgeInsets.only(
                left: 10.0,
                top: 5.0,
                bottom: 5.0,
                right: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: const DefaultTextStyle(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name : Jane Smith'),
                          SizedBox(height: 10.0),
                          Divider(
                            height: 2.0,
                            thickness: 1.0,
                            color: kDrawerDividerColor,
                          ),
                          SizedBox(height: 10.0),
                          Text('Age: 23'),
                          SizedBox(height: 10.0),
                          Divider(
                            height: 2.0,
                            thickness: 1.0,
                            color: kDrawerDividerColor,
                          ),
                          SizedBox(height: 10.0),
                          Text('Sex: F'),
                        ],
                      ),
                    ),
                  ),
                  DrawerButton(
                    icon: Icons.chat,
                  ),
                  DrawerButton(
                    icon: Icons.calculate,
                  ),
                  DrawerButton(
                    icon: Icons.music_note,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  DrawerButton({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: size.height * 0.1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
