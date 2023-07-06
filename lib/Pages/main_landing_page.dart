import 'package:flutter/material.dart';
import 'package:fitness/Widgets/app_bar_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fitness/constants/constants.dart';

import '../Widgets/bottom_nav_bar.dart';
import '../widgets/grid_view_builder.dart';

class MainLandingPage extends StatefulWidget {
  const MainLandingPage({Key? key}) : super(key: key);

  @override
  State<MainLandingPage> createState() => _MainLandingPageState();
}

class _MainLandingPageState extends State<MainLandingPage> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose(); // Dispose the focus node to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(
          FocusNode(),
        );
      },
      child: Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const AppBarContainer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: TextField(
                        focusNode: _focusNode,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 15.0, bottom: 8.0, top: 8.0),
                          suffixIcon: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.grey.shade600,
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: 45.0,
                          ),
                          filled: true,
                          fillColor: const Color(0xFFD9D9D9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: 'Search... Sweat... Repeat!',
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridViewBuilder(
                  length: exerciseCategories.containerData.length,
                  image: 'exerciseCategoryImage',
                  name: 'exerciseCategoryName',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
