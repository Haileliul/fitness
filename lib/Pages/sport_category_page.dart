import 'package:carousel_slider/carousel_slider.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fitness/constants/constants.dart';
import 'package:flutter/material.dart';

int activeIndex = 0;

final imagesUrl = [
  'https://images.unsplash.com/photo-1545346315-f4c47e3e1b55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFic3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1601986313624-28c11ac26334?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YWJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1577221084712-45b0445d2b00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YWJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1614396648745-d5de9c9e037e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YWJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1611603640928-0a26c496f47e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
];

class SportsCategory extends StatefulWidget {
  const SportsCategory({Key? key}) : super(key: key);

  @override
  State<SportsCategory> createState() => _SportsCategoryState();
}

class _SportsCategoryState extends State<SportsCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abs',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider.builder(
            itemCount: imagesUrl.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = imagesUrl[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 250,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          SizedBox(height: 10),
          buildIndicator(),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                        child: Image.network(
                          imagesUrl[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedSmoothIndicator(
            effect: ExpandingDotsEffect(
              dotColor: Colors.white,
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: kSecondaryColor,
            ),
            activeIndex: activeIndex,
            count: imagesUrl.length,
          ),
        ],
      );
}

Widget buildImage(String urlImage, int index) => Container(
      width: double.infinity,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
