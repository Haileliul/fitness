import 'package:flutter/material.dart';

import '../lists/exercises_categories.dart';
import 'package:fitness/Pages/sport_category_page.dart';

ExerciseCategories exerciseCategories = ExerciseCategories();

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({
    required this.length,
    required this.image,
    required this.name,
  });

  final int length;
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        color: Color(0xFFE81818),
        child: GridView.builder(
          itemCount: length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SportsCategory(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade500,
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Opacity(
                        opacity: 0.45,
                        child: Image.asset(
                          exerciseCategories.containerData[index][image]
                              .toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          exerciseCategories.containerData[index][name]
                              .toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
