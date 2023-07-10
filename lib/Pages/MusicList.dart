import 'package:fitness/main1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:assets_audio_player/assets_audio_player.dart';

import 'dart:convert';

class Music extends StatefulWidget {
  Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  late AssetsAudioPlayer player = AssetsAudioPlayer();
  final audios = <Audio>[
    Audio.network(
      'https://files.freemusicarchive.org/storage-freemusicarchive-org/music/Music_for_Video/springtide/Sounds_strange_weird_but_unmistakably_romantic_Vol1/springtide_-_03_-_We_Are_Heading_to_the_East.mp3',
      metas: Metas(
        id: 'Online',
        title: 'Online',
        artist: 'Florent Champigny',
        album: 'OnlineAlbum',
        // image: MetasImage.network('https://www.google.com')
        image: MetasImage.network(
            'https://image.shutterstock.com/image-vector/pop-music-text-art-colorful-600w-515538502.jpg'),
      ),
    ),
    Audio.network(
      'https://soundcloud.com/joseph-pompeo-422599025/turn-around-pomp-bootleg?si=635d716eb4f54f18bd135caac45cba8b&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing',
      metas: Metas(
        id: 'Online',
        title: 'Online',
        artist: 'Florent Champigny',
        album: 'OnlineAlbum',
        // image: MetasImage.network('https://www.google.com')
        image: MetasImage.network(
            'https://image.shutterstock.com/image-vector/pop-music-text-art-colorful-600w-515538502.jpg'),
      ),
    ),
  ];

  // this is for ApiPart

  /*  late String myRespons;
  late Map myMapresponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(""));
    if (response.statusCode == 200) {
      setState(() {
        // myRespons = response.body;
        myMapresponse = jsonDecode(response.body);
      });
    }
  } */

  @override
  void initState() {
    // TODO: implement initState
    // apicall();
    super.initState();
    openPlayer();
  }

  void openPlayer() async {
    await player.open(
      Playlist(audios: audios),
      showNotification: true,
      autoStart: true,
    );
  }

  void dispose() {
    player.dispose();
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hi it is me"),
            Center(
              child: IconButton(
                onPressed: openPlayer,
                icon: Icon(Icons.play_arrow),
              ),
            ),
          ],
        ),

        /*  Container(
          child: myMapresponse == null
              ? Text("Data is loading ... ")
              : Text(myMapresponse.toString()),
        ), */
      ),
    );
  }
}
