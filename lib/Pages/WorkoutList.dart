import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WorkoutList extends StatelessWidget {
  const WorkoutList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // back button
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Work Out",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Strong and Big Chest",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFA70808),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "/",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "6",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "workouts",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
                bottom: 7,
              ),
              width: size.width,
              height: size.height * 0.3,
              child: Text("Hi"),
              color: Color(0xFFA70808),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Bench Press",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next:"),
                        Text(" Dumbbell Press"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularPercentIndicator(
                radius: 60,
                lineWidth: 15,
                percent: 0.7,
                progressColor: Color(0xFFA70808),
                backgroundColor: Colors.white,
                circularStrokeCap: CircularStrokeCap.round,
                center: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFA70808),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "2",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "12x",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  " reps ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                // this is the place for Next set Button and Next Exercise
              ],
            ),
          ],
        ),
      ),
    );
  }
}
