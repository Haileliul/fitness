import './sport_category_page.dart';
import 'package:flutter/material.dart';
import '../Widgets/app_bar_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../lists/exercises_categories.dart';

import '../Widgets/grid_view_builder.dart';

class MainLandingPage extends StatefulWidget {
  MainLandingPage({Key? key}) : super(key: key);

  @override
  State<MainLandingPage> createState() => _MainLandingPageState();
}

class _MainLandingPageState extends State<MainLandingPage> {
  FocusNode _focusNode = FocusNode();

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
        body: SafeArea(
          child: Column(
            children: [
              AppBarContainer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: TextField(
                        focusNode: _focusNode,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 15.0, bottom: 8.0, top: 8.0),
                          suffixIcon: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.grey.shade600,
                          ),
                          constraints: BoxConstraints(
                            maxHeight: 45.0,
                          ),
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
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
