import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/animatedIcon.dart';
import '../Widgets/backButton.dart';
import '../Widgets/YotubePlayerPage.dart';
import '../Provider/exercises_categories.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

class DetailSubList extends StatelessWidget {
  var productState;
  var productStateModifier;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //create a new player
    // final assetsAudioPlayer = AssetsAudioPlayer();
    productState = Provider.of<ExerciseCategories>(context);
    productStateModifier =
        Provider.of<ExerciseCategories>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              // color: Colors.white.withOpacity(0.4),
              ),
          child: Column(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  decoration: const BoxDecoration(
                    // color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          youtubplayer(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: backButton(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Image.network(
                                  "${productState.containerData[productState.selectedCategoryIndex]["SubExercises"][productState.SubselectedCategoryIndex]["Img"]}"),
                              title: Text(
                                  "${productState.containerData[productState.selectedCategoryIndex]["SubExercises"][productState.SubselectedCategoryIndex]["Name"]}"),
                              subtitle: Text("this is detaile"),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 28.0,
                                vertical: 20,
                              ),
                              child: Text(
                                  "${productState.containerData[productState.selectedCategoryIndex]["SubExercises"][productState.SubselectedCategoryIndex]["Details"]}"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // here will the music go

              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.red,
                        Color.fromARGB(255, 223, 99, 99),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(),
                        child: const Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                        ),
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedIconExample(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
