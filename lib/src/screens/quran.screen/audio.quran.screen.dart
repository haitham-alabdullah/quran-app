import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/src/providers/audio.provider.dart';

import '../../classes/functions.class.dart';
import '../../shared/widgets/bottom_player.widget.dart';
import '../../shared/widgets/icon_botton.widget.dart';

class AudioQuranScreen extends StatelessWidget {
  static const String routeName = '/audio-screen';
  const AudioQuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioProvider>(
      builder: (provider) {
        return Scaffold(
          appBar: AppBar(
            title: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('المكتبة الصوتية'),
            ),
            centerTitle: true,
            elevation: 0,
            scrolledUnderElevation: 0,
            titleSpacing: 10,
            automaticallyImplyLeading: false,
            leading: IconButtonWidget(
              onPressed: Get.back,
              icon: Icons.adaptive.arrow_back_rounded,
              tooltip: 'Back'.tr,
            ),
            actions: [
              IconButtonWidget(
                onPressed: provider.showPlayer,
                icon: Icons.timer_outlined,
                tooltip: 'Audio Timer'.tr,
              ),
              const SizedBox(width: 3),
            ],
          ),
          body: const Column(
            children: [
              Expanded(
                child: SizedBox(),
              ),
              BottomPlayer(),
            ],
          ),
        );
      },
    );
  }

  showBookmarkDialog() {
    Functions.showAlertDialog(
      Get.context as BuildContext,
      content: const Text(
        'Are you sure you want to add bookmark to this page?',
      ),
      confirmCallback: () {
        print('===============');
      },
    );
  }

  showDrawer() {}
}
