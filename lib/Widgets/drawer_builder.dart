import 'package:fitness/constants/constants.dart';
import 'package:flutter/material.dart';

class DrawerBuilder extends StatelessWidget {
  const DrawerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            ),
          ),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFF607D8B),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                  ),
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
                  top: 10.0,
                  bottom: 5.0,
                  right: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 16.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Name : Jane Smith'),
                            const SizedBox(height: 10.0),
                            DividerBuilder(size: size),
                            const SizedBox(height: 10.0),
                            const Text('Age: 23'),
                            const SizedBox(height: 10.0),
                            DividerBuilder(size: size),
                            const SizedBox(height: 10.0),
                            const Text('Sex: F'),
                          ],
                        ),
                      ),
                    ),
                    DrawerButton(
                      icon: Icons.chat,
                      text: 'Chat',
                    ),
                    DrawerButton(
                      icon: Icons.calculate,
                      text: 'BMI Calculator',
                    ),
                    DrawerButton(
                      icon: Icons.music_note,
                      text: 'Musics',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
                  vertical: size.height * 0.09,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/images/ads_rec.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DividerBuilder extends StatelessWidget {
  const DividerBuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      child: const Divider(
        height: 2.0,
        thickness: 1.0,
        color: kDrawerDividerColor,
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  DrawerButton({required this.icon, required this.text});

  final IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: size.height * 0.08,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: kSecondaryColor,
                          size: size.width * 0.08,
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Text(
                          text,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
