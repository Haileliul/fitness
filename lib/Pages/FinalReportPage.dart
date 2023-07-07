import 'package:flutter/material.dart';

import '../Widgets/backButton.dart';
import '../Widgets/chart.dart';

class FinalReportPage extends StatefulWidget {
  const FinalReportPage({super.key});

  @override
  State<FinalReportPage> createState() => _FinalReportPageState();
}

class _FinalReportPageState extends State<FinalReportPage> {
  static int indicator = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: backButton(),
            ),
            Expanded(
              child: Container(
                width: size.width * 0.98,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(
                      0.3,
                    ),
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: size.width,
                        height: size.height * 0.35,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(
                            0.3,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: LineChartWidget(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        width: size.width,
                        height: size.height * 0.1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color:
                                    indicator != -1 ? Colors.red : Colors.white,
                              ),
                              width: 49,
                              margin: const EdgeInsets.all(2),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    indicator = index;
                                  });
                                },
                                child: const Text("hi"),
                              ),
                            );
                          },
                          itemCount: 6,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: Container(
                        width: 5,
                        height: 220,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
