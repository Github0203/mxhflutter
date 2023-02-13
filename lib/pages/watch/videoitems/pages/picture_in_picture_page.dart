import 'package:mangxahoi/thuvien/betterPlayer/better_player.dart';
import 'package:mangxahoi/pages/watch/videoitems/constants.dart';
import 'package:flutter/material.dart';

class PictureInPicturePage extends StatefulWidget {
  @override
  _PictureInPicturePageState createState() => _PictureInPicturePageState();
}

class _PictureInPicturePageState extends State<PictureInPicturePage> {
  late BetterPlayerController _betterPlayerController;
  GlobalKey _betterPlayerKey = GlobalKey();

  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
    );
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      Constants.elephantDreamVideoUrl,
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(dataSource);
    _betterPlayerController.setBetterPlayerGlobalKey(_betterPlayerKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(
              controller: _betterPlayerController,
              key: _betterPlayerKey,
            ),
          ),
          // ElevatedButton(
          //   child: Text("Show PiP"),
          //   onPressed: () {
          //     _betterPlayerController.enablePictureInPicture(_betterPlayerKey);
          //   },
          // ),
          // ElevatedButton(
          //   child: Text("Disable PiP"),
          //   onPressed: () async {
          //     _betterPlayerController.disablePictureInPicture();
          //   },
          // ),
        ],
      );
  }
}
