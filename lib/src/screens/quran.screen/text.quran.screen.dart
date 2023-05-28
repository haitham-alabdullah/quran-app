import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/src/classes/constants.class.dart';

import '../../classes/functions.class.dart';
import '../../shared/widgets/bottom_player.widget.dart';
import '../../shared/widgets/icon_botton.widget.dart';
import 'audio.quran.screen.dart';
import 'widgets/drawer.widget.dart';

class TextQuranScreen extends StatefulWidget {
  static const routeName = '/text-quran-screen';
  const TextQuranScreen({super.key});

  @override
  State<TextQuranScreen> createState() => _TextQuranScreenState();
}

class _TextQuranScreenState extends State<TextQuranScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void toggleDrawer() {
    final state = scaffoldKey.currentState;
    if (state == null) return;
    if (state.isEndDrawerOpen) {
      state.closeEndDrawer();
    } else {
      state.openEndDrawer();
    }
  }

  showBookmarkDialog() {
    Functions.showAlertDialog(
      context,
      content: const Text(
        'Are you sure you want to add bookmark to this page?',
      ),
      confirmCallback: () {
        print('===============');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const QuranDrawer(),
      bottomNavigationBar: const BottomPlayer(),
      appBar: AppBar(
        title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('سورة البقرة'),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 10,
        automaticallyImplyLeading: false,
        leading: IconButtonWidget(
          onPressed: () => Get.toNamed(AudioQuranScreen.routeName),
          icon: Icons.headphones_rounded,
          tooltip: 'Audio Library'.tr,
        ),
        actions: [
          IconButtonWidget(
            onPressed: showBookmarkDialog,
            icon: Icons.bookmark_outline_rounded,
            tooltip: 'Bookmark'.tr,
          ),
          IconButtonWidget(
            onPressed: toggleDrawer,
            icon: Icons.format_list_bulleted_rounded,
            tooltip: 'Surah List'.tr,
          ),
          const SizedBox(width: 3),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  // color: Colors.red,
                  ),
            ),
            Container(
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الجزء : 5',
                    style: TextStyle(color: Constants.secondary(context)),
                  ),
                  Text(
                    '88 / 604',
                    style: TextStyle(color: Constants.secondary(context)),
                  ),
                  Text(
                    'الحزب : 10',
                    style: TextStyle(color: Constants.secondary(context)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
