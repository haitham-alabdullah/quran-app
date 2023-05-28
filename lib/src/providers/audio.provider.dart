import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AudioProvider extends GetxController {
  final player = [];
  String currentSurah = '';
  Duration? currentDuration;
  bool playerVisibility = true;
  bool playerStatus = true;
  IconData icon = Icons.play_circle_fill_rounded;

  togglePlayer() async {
    if (playerStatus) {
      playerStatus = false;
      icon = Icons.play_circle_fill_rounded;
    } else {
      await playAudio();
      playerStatus = true;
      icon = Icons.pause_circle_filled_rounded;
    }
    update();
  }

  showPlayer() async {
    playerVisibility = true;
    update();
  }

  playAudio() async {}

  closePlayer() async {
    playerStatus = false;
    icon = Icons.play_circle_filled_rounded;
    playerVisibility = false;
    update();
  }
}
