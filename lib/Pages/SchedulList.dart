import 'package:flutter/material.dart';

import '../Widgets/backButton.dart';

class SchedulList extends StatelessWidget {
  List<Map> Scheduller = [
    {
      "title": "Weak one",
      "Excersise": [
        {
          "day": "Moonday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Tusday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Wednsday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Thursday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Friday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "SaterDay",
          "todo": ["running", "jumping", "walking", "helping"],
        }
      ]
    },
    {
      "title": "Weak Two",
      "Excersise": [
        {
          "day": "Moonday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Tusday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Wednsday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Thursday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Friday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "SaterDay",
          "todo": ["running", "jumping", "walking", "helping"],
        }
      ]
    },
    {
      "title": "Weak Three",
      "Excersise": [
        {
          "day": "Moonday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Tusday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Wednsday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Thursday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Friday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "SaterDay",
          "todo": ["running", "jumping", "walking", "helping"],
        }
      ]
    },
    {
      "title": "Weak Fourth",
      "Excersise": [
        {
          "day": "Moonday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Tusday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Wednsday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Thursday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "Friday",
          "todo": ["running", "jumping", "walking", "helping"],
        },
        {
          "day": "SaterDay",
          "todo": ["running", "jumping", "walking", "helping"],
        }
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/lo.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: backButton(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return RadialGradient(
                                center: Alignment.topLeft,
                                radius: 1.0,
                                colors: [Colors.yellow, Colors.red],
                                tileMode: TileMode.mirror,
                              ).createShader(bounds);
                            },
                            child: Text(
                              "WorkOut Scheduler",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          // height: size.height * 0.1,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: ExpansionTile(
                            iconColor: Colors.red,
                            textColor: Colors.red,
                            // backgroundColor: Colors.red,
                            leading: Text(index.toString()),

                            title: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 45.0),
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return RadialGradient(
                                      center: Alignment.topLeft,
                                      radius: 1.0,
                                      colors: [Colors.yellow, Colors.red],
                                      tileMode: TileMode.mirror,
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    "${Scheduller[index]["title"]}",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Text(
                                            "${Scheduller[0]["Excersise"][index]["day"]}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                          Colors.grey,
                                        )),
                                      ),
                                    );
                                  },
                                  itemCount: 6,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
